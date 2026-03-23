using System;
using System.Collections.Generic;
using System.Text;
using Group.Models;
namespace Group.InterfaceRepotisioy
{
    public  interface IUserRepotisory
    {
        void DeleteUserId();
        string GetUserId();
        void  SaveUser(UserJons userJons);
        Task SaveUserProfil(User user,string userid);
        bool GetIsLogin();
    }
}
