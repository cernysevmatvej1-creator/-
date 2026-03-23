using Firebase.Database.Query;
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
            await firebaseClient.Child("Group").Child(userid).Child("Profil").PutAsync(user);
        }
        public void DeleteUserId()
        {
            Preferences.Remove(_username);
            Preferences.Remove(_islogin);
        }
    }
}
