using System;
using System.Collections.Generic;
using System.Text;
using Group.Error_correction_system;
using Group.Models;
namespace Group.InterfaceServies
{
    public interface IUserServies
    {
      
        Task<Result> SignAnonimal(User user);
        
    }
}
