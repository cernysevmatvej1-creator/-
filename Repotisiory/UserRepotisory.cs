using Firebase.Database.Query;
using Group.Error_correction_system;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Group.Repotisiory
{
    public class UserRepotisory : BaseRepotisiory, IUserRepotisory
    {
        public UserRepotisory() : base()
        {

        }
        private const string _username = "username";
        private const string _islogin = "IsLogin";
        private const string _firabsetoken = "FirebaseToken";
        private const string _refrsehntoken = "RefreshToken";

        public string GetUserId()
        {
            return Preferences.Get(_username,"");
        }

        public void  SaveUser(UserJons userJons)
        {
           Preferences.Set(_username,userJons.UserId);
           Preferences.Set(_firabsetoken, userJons.FireBaseToken);
           Preferences.Set(_refrsehntoken, userJons.FireBaseRefreshToken);
           Preferences.Set(_islogin,true);
        }
        public bool GetIsLogin()
        {
            return Preferences.Get(_islogin,false);
        }
        public async Task SaveUserProfil(User user,string userid) 
        {
            await base.Authorization();
            user.Id = userid;
            await firebaseClient.Child("Group").Child(userid).Child("Profil").PutAsync(user);
        }
        
        public void DeleteUserId()
        {
            Preferences.Remove(_username);
            Preferences.Remove(_islogin);
        }

        public async  Task<Result<User>> LoadedUserProfil(string userid)
        {
            try
            {
                await base.Authorization();
                var loadedprofil = await firebaseClient.Child("Group").Child(userid).Child("Profil").OnceSingleAsync<User>();
                if (loadedprofil == null)
                    return Result<User>.Fail("Профиль пустой");
                return Result<User>.Ok(loadedprofil);
            }
            catch(Exception ex) 
            {
                return Result<User >.Fail(ex.Message); 
            }
        }
    }
}
