using System;
using System.Collections.Generic;
using System.Text;
using Group.Models;
using Group.InterfaceRepotisioy;
using Firebase.Database.Query;
using Group.Error_correction_system;
using TRAIN;
namespace Group.Repotisiory
{
    public   class GroupRepotisioty : BaseRepotisiory,IGroupRepotisiory
    {

      
        public async Task AddGroup(NewGroupModel newGroupModel,string getuserid)
        {
            var check = await base.Authorization();
        if(check)
            await firebaseClient.Child("Group").Child(getuserid).Child("MyGroup").PostAsync(newGroupModel);
        }
        public async Task PublicAddGroup(NewGroupModel newGroupModel)
        {
            var check = await base.Authorization();
            if(check)
              await firebaseClient.Child("Group").Child(newGroupModel.Id).Child("GroupProfil").PutAsync(newGroupModel);
        }
        public async Task<Result<List<NewGroupModel>>> LoadedGroup(string getuserid)
        {
            try
            {
                await base.Authorization();
                var listgroups = await firebaseClient.Child("Group").Child(getuserid).Child("MyGroup").OnceAsync<NewGroupModel>();
               var  listgroup = new List<NewGroupModel>();
                foreach (var group in listgroups) {

                    var groups=   await SearchGroup(group.Object.Id);
                    listgroup.Add(groups.Data);
                    

                }
                if (listgroup == null)
                {
                   await DialogHelper.ShowAlert("d", "Группы  пусты");
                }
                    return Result<List<NewGroupModel>>.Ok(listgroup, "Группы успешно загружены");
            }
            catch (Exception ex) 
            {
                return  Result<List<NewGroupModel>>.Fail(ex.Message);
            }

        }

        public async Task RemoveGroup(int id)
        {
            
        }

        public async Task<Result<NewGroupModel>> SearchGroup(string groupid)
        {
            try 
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<NewGroupModel>.Fail("Авторизация прошла успешно");
                var serachgroupmodel = await firebaseClient.Child("Group").Child(groupid).Child("GroupProfil").OnceSingleAsync<NewGroupModel>();
                var serachgroupbids = await firebaseClient.Child("Group").Child(groupid).Child("Bids").OnceAsync<Bid>();
                if (serachgroupmodel == null)
                    return Result<NewGroupModel>.Fail("Группа не найдена");
                foreach (var bid in serachgroupbids) {
                    serachgroupmodel.Bids.Add(new Bid()
                    {
                        User = bid.Object.User,
                    }) ;
                }
                await DialogHelper.ShowAlert("asdasd", serachgroupmodel.NikAvtor);
                return Result<NewGroupModel>.Ok(new NewGroupModel()
                {
                    Id = serachgroupmodel.Id,
                    NikAvtor = serachgroupmodel.NikAvtor,
                  
                    Bids = serachgroupmodel.Bids,
                    
                });

            }
            catch(Exception ex) 
            {
                return Result<NewGroupModel>.Fail(ex.Message);  
            } 
          

        }

        public async  Task<Result> AddBid(string getidgroup,Bid bid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result.Fail("Ошибка авторизации");
                 await firebaseClient.Child("Group").Child(getidgroup).Child("Bids").PostAsync(bid);
                return Result.Ok();
            }
            catch (Exception ex) {
                return Result.Fail(ex.Message);
            }
         


        }
    }
}
