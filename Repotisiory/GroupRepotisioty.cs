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
            await firebaseClient.Child("Group").Child(getuserid).PostAsync(newGroupModel);
        }
        public async Task PublicAddGroup(NewGroupModel newGroupModel)
        {
            var check = await base.Authorization();
            if(check)
              await firebaseClient.Child("Group").Child(newGroupModel.Id).PostAsync(newGroupModel);
        }
        public async Task<Result<List<NewGroupModel>>> LoadedGroup(string getuserid)
        {
            try
            {
                await base.Authorization();
                var listgroups = await firebaseClient.Child("Group").Child(getuserid).OnceAsync<NewGroupModel>();
               var  listgroup = new List<NewGroupModel>();
                foreach (var group in listgroups) {
                    listgroup.Add(new NewGroupModel
                    {
                        NikAvtor = group.Object.NikAvtor,
                        Id = group.Object.Id,
                        
                    });
                   
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
            var check = await base.Authorization();
            if (!check)
                return Result<NewGroupModel>.Fail("Авторизация прошла успешно");
            var serachgroupmodel = await firebaseClient.Child("Group").Child(groupid).OnceAsync<NewGroupModel>();
            if (serachgroupmodel == null)
                return Result<NewGroupModel>.Fail("Группа не найдена");
            foreach (var i in serachgroupmodel)
            {
               
                return Result<NewGroupModel>.Ok(new NewGroupModel()
                {
                    Id = i.Object.Id,
                    NikAvtor = i.Object.NikAvtor
                }
                , "Все прошло успешно");


            }
            return Result<NewGroupModel>.Fail("Группа не найдена");

        }

        public async  Task<Result> AddBid(string getuserid)
        {
         var check =  await base.Authorization();
            if (!check)
                return Result.Fail("Ошибка авторизации");
            

        }
    }
}
