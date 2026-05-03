using System;
using System.Collections.Generic;
using System.Text;
using Group.ErrorСorrectionSystem;
using Group.Models;
namespace Group.InterfaceRepotisioy
{
    public  interface IUserRepotisory
    {
        void DeleteUserId();
        string GetUserId();
        void  SaveUser(UserJons userJons);
        Task SaveUserProfil(User user,string userid);
        Task<Result<User>> LoadedUserProfil(string userid);
        bool GetIsLogin();
    }
}
