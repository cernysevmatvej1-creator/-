using System;
using System.Collections.Generic;
using System.Text;
using Group.ErrorСorrectionSystem;
using Group.Models;
namespace Group.InterfaceServies
{
    public interface IUserServies
    {
      
        Task<Result> SignAnonimal(User user);
        Task<Result<User>> LoadedProfil();
        void Remove();
        Task<Result> SaveProfil(User user);


    }
}
