using Firebase.Database.Query;
using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
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
               var check =   await base.Authorization();
                if(!check)
                    return Result<List<NewGroupModel>>.Fail("Аутификация прошла неуспешана");
                var listgroups = await firebaseClient.Child("Group").Child(getuserid).Child("MyGroup").OnceAsync<NewGroupModel>();
               var  listgroup = new List<NewGroupModel>();
                foreach (var group in listgroups) {
                    listgroup.Add(new NewGroupModel
                    {
                        Id = group.Object.Id,
                        Key = group.Key, 
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

       
        public async Task<Result<List<Bid>>> LoadedBids(string groupid)
        {
            
            var serachgroupbid = await firebaseClient.Child("Group").Child(groupid).Child("Bids").OnceAsync<Bid>();
            List<Bid> bids = new List<Bid>();
            foreach (var bid in serachgroupbid) {
                bids.Add(new Bid
                {
                    Key = bid.Key,
                    GetGroupId = bid.Object.GetGroupId,
                    User = bid.Object.User, 
                });
            }
            if (bids.Count == null)
                return Result<List<Bid>>.Fail("Заявки пусты");
            return Result<List<Bid>>.Ok(bids);
           
        }
        public async Task<Result<NewGroupModel>> SearchGroup(string groupid)
        {
            try 
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<NewGroupModel>.Fail("Авторизация прошла успешно");
                var serachgroupmodel = await firebaseClient.Child("Group").Child(groupid).Child("GroupProfil").OnceSingleAsync<NewGroupModel>();
               
               
                if (serachgroupmodel == null)
                    return Result<NewGroupModel>.Fail("Группа не найдена");
              
            
                return Result<NewGroupModel>.Ok(new NewGroupModel()
                {
                    Id = serachgroupmodel.Id,
                    NikAvtor = serachgroupmodel.NikAvtor,  
           
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
        public async Task<Result> AddMembers(Bid bid,string getgroupid)
        {
            try
            {
        
                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");
                await firebaseClient
        .Child("Group")
        .Child(getgroupid)
        .Child("members")
        .Child(bid.User.Id)
        .PutAsync(bid.User);
                return Result.Ok();

            }
            catch(Exception ex) 
            {
                return Result.Fail(ex.Message);    
            }
        }
        public async Task <Result<List<User>>> LoadedMembers(string getgroupid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<List<User>>.Fail("Авторизация прошла успешно");
                var loaded = await firebaseClient.Child("Group").Child(getgroupid).Child("members").OnceAsync<User>();
                if(loaded == null)
                    return Result<List<User>>.Fail("303");
                List<User> users = new List<User>();
                users.Clear();
                foreach (var item in loaded)
                {
                    users.Add(new User { Id = item.Object.Id, Name = item.Object.Name, Key = item.Key});
                }
                return Result<List<User>>.Ok(users,"Загрузка прошла успешно");

            }
            catch (Exception ex)
            {
                return Result<List<User>>.Fail(ex.Message);
            }

        }
        public async Task<Result> RemoveBid(Bid bid, string getgroupid)
        {
            try
            {
                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");
                await firebaseClient.Child("Group").Child(getgroupid).Child("Bids").Child(bid.Key).DeleteAsync();
                
                return Result.Ok();
            }
            catch (Exception ex)
            {
                return Result.Fail(ex.Message);
            }
        }
        public async Task<Result> DeleteUser(string getgroupid,string keyuser)
        {
            if (!await base.Authorization())
                return Result.Fail("Авторизация прошла неуспешно");
            await firebaseClient.Child("Group").Child(getgroupid).Child("members").Child(keyuser).DeleteAsync();
            return Result.Ok();
        }
        public async Task<Result> DeleteGroup(string keygroup,string userid)
        {
            if (!await base.Authorization())
                return Result.Fail("Авторизация прошла неуспешно");
            await firebaseClient.Child("Group").Child(userid).Child("MyGroup").Child(keygroup).DeleteAsync();
            return Result.Ok();
        }
    }
}
