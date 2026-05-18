using Firebase.Database;
using Firebase.Database.Query;
using Group.ErrorСorrectionSystem;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
                Debug.WriteLine($"AddMetting error: {ex.GetType().FullName} — {ex.Message}");

                if (ex.Message.Contains("permission", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("denied", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("Unauthorized", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("403", StringComparison.OrdinalIgnoreCase))
                {
                    return Result.Fail("Доступ запрещен");
                }

                return Result.Fail("Произошла ошибка");
            }
        }

        public async Task<Result<List<Metting>>> LoadedMetting(string getgroupid)
        {
            try
            {
                if (!await base.Authorization())
                    return Result<List<Metting>>.Fail("Авторизация прошла неуспешно");

                List<Metting> mettings = new List<Metting>();
                var loadedmetting = await firebaseClient
                    .Child("Group")
                    .Child(getgroupid)
                    .Child("Mettigns")
                    .OnceAsync<Metting>();

                foreach (var metting in loadedmetting)
                {
                    mettings.Add(new Metting
                    {
                        Time = metting.Object.Time,
                        Mesto = metting.Object.Mesto,
                        NameAvtorMetting = metting.Object.NameAvtorMetting,
                        Users = metting.Object.Users ?? new List<WhoWillGo>(),
                        Key = metting.Key,
                    });
                }

                return Result<List<Metting>>.Ok(mettings);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"LoadedMetting error: {ex.GetType().FullName} — {ex.Message}");

                if (ex.Message.Contains("permission", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("denied", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("Unauthorized", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("403", StringComparison.OrdinalIgnoreCase))
                {
                    return Result<List<Metting>>.Fail("Доступ запрещен");
                }

                return Result<List<Metting>>.Fail("Произошла ошибка");
            }
        }

        public async Task<Result> Poiti(string getgroupid, string key, Metting metting)
        {
            try
            {
                if (!await base.Authorization())
                    return Result.Fail("Авторизация прошла неуспешно");

                await firebaseClient
                    .Child("Group")
                    .Child(getgroupid)
                    .Child("Mettigns")
                    .Child(key)
                    .PutAsync(metting);

                return Result.Ok();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Poiti error: {ex.GetType().FullName} — {ex.Message}");

                if (ex.Message.Contains("permission", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("denied", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("Unauthorized", StringComparison.OrdinalIgnoreCase) ||
                    ex.Message.Contains("403", StringComparison.OrdinalIgnoreCase))
                {
                    return Result.Fail("Доступ запрещен");
                }

                return Result.Fail("Произошла ошибка");
            }
        }
    }
}