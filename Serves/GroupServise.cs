using Group.Error_correction_system;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using Group.Repotisiory;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;

namespace Group.Serves
{
    class GroupServise : IGroupServise
    {
        private IGroupRepotisiory _groupRepotisiory;
        private IUserRepotisory _userRepotisory;
        public GroupServise(IGroupRepotisiory ifakeRepotisory, IUserRepotisory userRepotisory   )
        {
            _groupRepotisiory = ifakeRepotisory;
            _userRepotisory = userRepotisory;
        }

        public async  Task<Result> AddBid(string groupid,NewGroupModel newGroupModel)
        {
            try
            {
                var profilgroup = await _groupRepotisiory.LoadedGroup(_userRepotisory.GetUserId());
                bool check = false;
                foreach (var group in profilgroup.Data)
                {
                    if (group.Id == groupid)
                    {
                        check = true;
                        break;
                    }
                }
                if (!check)
                {
                     var loadedprofil = await _userRepotisory.LoadedUserProfil(_userRepotisory.GetUserId());
                    if (loadedprofil.Success) {

                        await _groupRepotisiory.AddGroup(newGroupModel, _userRepotisory.GetUserId());
                        Bid bid = new Bid()
                        {
                         User = loadedprofil.Data,
                         GetGroupId = groupid,  
                        };
                        return await _groupRepotisiory.AddBid(groupid,bid);
                    }
                    return Result.Fail("Профиль пустой");
              
       
                }
                else
                    return Result.Fail("Вы уже подали заявку");
           
            }
            catch (Exception ex)
            {
                return Result.Fail(ex.Message);

            }
   
        }

        public async Task<string> AddGroup(NewGroupModel model)
        {
            try
            {
              
                string check = Validitioin(model);
                if (check == null)
                {
                   await _groupRepotisiory.AddGroup(model,_userRepotisory.GetUserId());
                    await _groupRepotisiory.PublicAddGroup(model);
                    return "Группа создана";
                }
                else
                    return check;

            }
            catch (Exception ex) { 
            return ex.Message;
            
            }
        }

        public async  Task<Result> AddMembers(Bid bid, string getgroupid)
        {
            if (bid == null)
                return Result.Fail("Заявка пуста");
            if (getgroupid == null)
                return Result.Fail("Айди не действительно");
            if (bid.User == null)
                return Result.Fail("User == null");
            await _groupRepotisiory.RemoveBid(bid, getgroupid);
            return await _groupRepotisiory.AddMembers(bid, getgroupid);
            
   
        }

        public async Task<Result<List<NewGroupModel>>> LoadedGroups()
        {
            try
            {
                var loadedgroups = await _groupRepotisiory.LoadedGroup(_userRepotisory.GetUserId());
                List<NewGroupModel> groups = new List<NewGroupModel>();
                if (loadedgroups == null || loadedgroups.Data == null )
                    return Result<List<NewGroupModel>>.Fail("Нет групп");
                foreach (var group in loadedgroups.Data)
                {
                    var grup = await  _groupRepotisiory.SearchGroup(group.Id);
                    groups.Add(grup.Data);
                }
                if (groups == null)
                    return Result<List<NewGroupModel>>.Fail("Нет групп");
                return Result<List<NewGroupModel>>.Ok(groups,"Группы загружены");
            }
            catch (Exception ex) { 
            return  Result<List<NewGroupModel>>.Fail(ex.Message);
            }
        }

        public async  Task<Result> RemoveBid(Bid bid, string getgroupid)
        {
            throw new NotImplementedException();
        }

        public async  Task<Result<NewGroupModel>> SearchGroup(string groupid)
        {
          var d =  await _groupRepotisiory.SearchGroup(groupid);
            await DialogHelper.ShowAlert("asdasd", d.Message);
            return d;
        }

        private string Validitioin(NewGroupModel model)
        {
            if (model.Id.Length < 5)
                return "Неправильное айди";
            if (model.NikAvtor.Length < 2)
                return "Неправильное имя";
            else
            {
                return null ;
            }
        }
    }
}
