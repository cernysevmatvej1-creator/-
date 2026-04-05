using System.Net.Http.Json;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using Group.Error_correction_system;
using System.Diagnostics;
namespace Group.Serves
{
    public class UserServiece : IUserServies
    {
       
        private IUserRepotisory _userRepotisory;
        public UserServiece(IUserRepotisory userRepotisory)
        {
            _userRepotisory = userRepotisory; 
        }
        public async  Task<Result> SignAnonimal(User user)
        {

            try
            {
          
              
                if (_userRepotisory.GetIsLogin() == false || _userRepotisory.GetIsLogin() == null)
                {
                    HttpClient httpcliient = new HttpClient();
                    var respone =  await httpcliient.PostAsync("https://localhost:44388/api/AuthFirebase/auth-anonim", null);
                    var userData = await respone.Content.ReadFromJsonAsync<UserJons>();
                    _userRepotisory.SaveUser(userData);
                    return Result.Fail("Ошибка попробуйте еще раз");

                }
              
               
                await _userRepotisory.SaveUserProfil(user, _userRepotisory.GetUserId());
                return Result.Ok();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return Result.Fail($"Возникла техническая ошибка {ex.Message}" );

            }
        }
    }
}
