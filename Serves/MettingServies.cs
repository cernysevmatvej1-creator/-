using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Group.Serves
{
    public class MettingServies : IMettingService
    {
        private IUserRepotisory _useRepotisory;
        private IMettingRepositiory _mettingRepositiory;
        public  MettingServies(IUserRepotisory useRepotisory, IMettingRepositiory mettingRepositiory)
        {
            _useRepotisory = useRepotisory;
            _mettingRepositiory = mettingRepositiory;
        }

        public async Task<Result> AddMetting(string getgroupid,Metting metting)
        {
            if (metting == null)
                return Result.Fail("Встреча нулл");
            else if (getgroupid == null || getgroupid.Length < 6)
                return Result.Fail("Неправильный айди");
            else if (_useRepotisory == null)
                return Result.Fail("User-Репотизиорий равен нулю");
            else if (_mettingRepositiory == null)
                return Result.Fail("Metting-Репотизиорий равен нулю");
            var nameuserid =  await _useRepotisory.LoadedUserProfil(_useRepotisory.GetUserId());
            if (nameuserid == null)
                return Result.Fail("405");
            else if (nameuserid.Data.Name == null || nameuserid.Data.Id == null)
                return Result.Fail("Профиль нулл");
            metting.NameAvtorMetting = nameuserid.Data.Name;    
            return await _mettingRepositiory.AddMetting(getgroupid , metting);

        }
        public async Task<Result> Poiti(Metting metting,bool ifgo,string getgroupid)
        {

            var nameuserid = await _useRepotisory.LoadedUserProfil(_useRepotisory.GetUserId());
            if (nameuserid == null)
                return Result.Fail("405");
            else if (nameuserid.Data.Name == null || nameuserid.Data.Id == null)
                return Result.Fail("Профиль нулл");

            var existingUser = metting.Users.FirstOrDefault(u => u.User.Id == nameuserid.Data.Id);
            if (existingUser != null)
            {
                existingUser.IfGo = ifgo;
            }
            else
            {
                metting.Users.Add(new WhoWillGo { User = nameuserid.Data, IfGo = ifgo });
            }

            await _mettingRepositiory.Poiti(getgroupid, metting.Key, metting);

            return Result.Ok();
        }
        public async Task<Result<List<Metting>>> LoadedMetting(string getgroupid)
        {
            if (getgroupid == null || getgroupid.Length < 6)
                return Result<List<Metting>>.Fail("402");
           return await _mettingRepositiory.LoadedMetting(getgroupid);
        }
    }
}
