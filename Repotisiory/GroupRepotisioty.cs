using Firebase.Database;
using Firebase.Database.Query;
using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text.RegularExpressions;
using TRAIN;

namespace Group.Repotisiory
{
    public class GroupRepotisioty : BaseRepotisiory, IGroupRepotisiory
    {
        public async Task AddGroup(NewGroupModel newGroupModel, string getuserid)
        {
            var check = await base.Authorization();
            if (check)
                await firebaseClient.Child("Group").Child(getuserid).Child("MyGroup").PostAsync(newGroupModel);
        }

        public async Task PublicAddGroup(NewGroupModel newGroupModel)
        {
            var check = await base.Authorization();
            if (check)
                await firebaseClient.Child("Group").Child(newGroupModel.Id).Child("GroupProfil").PutAsync(newGroupModel);
        }

        public async Task<Result<List<NewGroupModel>>> LoadedGroup(string getuserid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<List<NewGroupModel>>.Fail("Аутификация прошла неуспешана");

                var listgroups = await firebaseClient.Child("Group").Child(getuserid).Child("MyGroup").OnceAsync<NewGroupModel>();
                var listgroup = new List<NewGroupModel>();

                foreach (var group in listgroups)
                {
                    listgroup.Add(new NewGroupModel
                    {
                        Id = group.Object.Id,
                        Key = group.Key,
                    });
                }

                

                return Result<List<NewGroupModel>>.Ok(listgroup, "Группы успешно загружены");
            }
            catch (FirebaseException)
            {
                return Result<List<NewGroupModel>>.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"LoadedGroup error: {ex.Message}");
                return Result<List<NewGroupModel>>.Fail("Произошла ошибка");
            }
        }

        public async Task<Result<List<Bid>>> LoadedBids(string groupid)
        {
            try
            {
                var serachgroupbid = await firebaseClient.Child("Group").Child(groupid).Child("Bids").OnceAsync<Bid>();
                List<Bid> bids = new List<Bid>();

                foreach (var bid in serachgroupbid)
                {
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
            catch (FirebaseException)
            {
                return Result<List<Bid>>.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"LoadedBids error: {ex.Message}");
                return Result<List<Bid>>.Fail("Произошла ошибка");
            }
        }

        public async Task<Result<NewGroupModel>> SearchGroup(string groupid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<NewGroupModel>.Fail("Авторизация прошла неуспешно");

                var serachgroupmodel = await firebaseClient
                    .Child("Group")
                    .Child(groupid)
                    .Child("GroupProfil")
                    .OnceSingleAsync<NewGroupModel>();

                if (serachgroupmodel == null)
                    return Result<NewGroupModel>.Fail("Группа не найдена");

                return Result<NewGroupModel>.Ok(new NewGroupModel()
                {
                    Id = serachgroupmodel.Id,
                    NikAvtor = serachgroupmodel.NikAvtor,
                    KeyAdminId = serachgroupmodel.KeyAdminId
                });
            }
            catch (FirebaseException)
            {
                return Result<NewGroupModel>.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"SearchGroup error: {ex.Message}");
                return Result<NewGroupModel>.Fail("Произошла ошибка");
            }
        }

        public async Task<Result> AddBid(string getidgroup, Bid bid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result.Fail("Ошибка авторизации");

                await firebaseClient.Child("Group").Child(getidgroup).Child("Bids").PostAsync(bid);
                return Result.Ok();
            }
            catch (FirebaseException)
            {
                return Result.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"AddBid error: {ex.Message}");
                return Result.Fail("Произошла ошибка");
            }
        }

        public async Task<Result> AddMembers(Bid bid, string getgroupid)
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
            catch (FirebaseException)
            {
                return Result.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"AddMembers error: {ex.Message}");
                return Result.Fail("Произошла ошибка");
            }
        }

        public async Task<Result<List<User>>> LoadedMembers(string getgroupid)
        {
            try
            {
                var check = await base.Authorization();
                if (!check)
                    return Result<List<User>>.Fail("Авторизация прошла неуспешно");

                var loaded = await firebaseClient.Child("Group").Child(getgroupid).Child("members").OnceAsync<User>();

                if (loaded == null)
                    return Result<List<User>>.Fail("303");

                List<User> users = new List<User>();
                foreach (var item in loaded)
                {
                    users.Add(new User { Id = item.Object.Id, Name = item.Object.Name, Key = item.Key });
                }

                return Result<List<User>>.Ok(users, "Загрузка прошла успешно");
            }
            catch (FirebaseException)
            {
                return Result<List<User>>.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"LoadedMembers error: {ex.Message}");
                return Result<List<User>>.Fail("Произошла ошибка");
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
            catch (FirebaseException)
            {
                return Result.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"RemoveBid error: {ex.Message}");
                return Result.Fail("Произошла ошибка");
            }
        }

        public async Task<Result> DeleteUser(string getgroupid, string keyuser)
        {
            try
            {
                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");

                await firebaseClient.Child("Group").Child(getgroupid).Child("members").Child(keyuser).DeleteAsync();
                return Result.Ok();
            }
            catch (FirebaseException)
            {
                return Result.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DeleteUser error: {ex.Message}");
                return Result.Fail("Произошла ошибка");
            }
        }

        public async Task<Result> DeleteGroup(string keygroup, string userid)
        {
            try
            {
                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");

                await firebaseClient.Child("Group").Child(userid).Child("MyGroup").Child(keygroup).DeleteAsync();
                return Result.Ok();
            }
            catch (FirebaseException)
            {
                return Result.Fail("Доступ запрещен");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"DeleteGroup error: {ex.Message}");
                return Result.Fail("Произошла ошибка");
            }
        }
    }
}