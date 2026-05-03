using Firebase.Database.Query;
using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;
namespace Group.Repotisiory
{
    public class MettingRepositiory : BaseRepotisiory, IMettingRepositiory
    {


        public async Task<Result> AddMetting(string getgroupid, Metting metting)
        {
            try
            {

                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");
                await firebaseClient.Child("Group").Child(getgroupid).Child("Mettigns").PostAsync(metting);
                return Result.Ok();
            }
            catch (Exception ex)
            {
                return Result.Fail(ex.Message);
            }

        }

        public async Task<Result<List<Metting>>> LoadedMetting(string getgroupid)
        {
            try
            {

                if (!await base.Authorization())
                    return Result<List<Metting>>.Fail("Авторизация прошла неуспешно");
                List<Metting> mettings = new List<Metting>();
                var loadedmetting = await firebaseClient.Child("Group").Child(getgroupid).Child("Mettigns").OnceAsync<Metting>();
                foreach (var metting in loadedmetting) {
                    mettings.Add(new Metting
                    {
                        Time = metting.Object.Time,
                        Mesto = metting.Object.Mesto,
                        NameAvtorMetting = metting.Object.NameAvtorMetting,
                        Users = metting.Object.Users,
                        Key = metting.Key,
                        
                    });
                   

                }

                return Result<List<Metting>>.Ok(mettings);
            }
            catch (Exception ex)
            {
                return Result<List<Metting>>.Fail(ex.Message);
            }

        }
        public async Task<Result> Poiti(string getgroupid, string key, Metting metting)
        {
            if (!await base.Authorization())
                return Result.Fail("Авторизация прошла неуспешно");
            
            return Result.Ok();
        }
        
    }
      
}
