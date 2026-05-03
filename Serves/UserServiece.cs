using System.Net.Http.Json;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;
using Group.ErrorСorrectionSystem;
namespace Group.Serves
{
    public class UserServiece : IUserServies
    {
       
        private IUserRepotisory _userRepotisory;
        public UserServiece(IUserRepotisory userRepotisory)
        {
            _userRepotisory = userRepotisory; 
        }
        public async Task<Result<User>> LoadedProfil()
        {
            return await _userRepotisory.LoadedUserProfil(_userRepotisory.GetUserId());
        }
        public void Remove()
        {
            _userRepotisory.DeleteUserId(); 
        }
        public async Task<Result> SaveProfil(User user)
        {
            try
            {


                


                await _userRepotisory.SaveUserProfil(user, _userRepotisory.GetUserId());
                return Result.Ok();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return Result.Fail($"Возникла техническая ошибка {ex.Message}");
            }
        }
        public async  Task<Result> SignAnonimal(User user)
        {

            try
            {
          
              
                    HttpClient httpcliient = new HttpClient();
                    var respone =  await httpcliient.PostAsync("https://groupapi-gaa6.onrender.com/api/AuthFirebase/auth-anonim", null);
                    var userData = await respone.Content.ReadFromJsonAsync<UserJons>();
                    _userRepotisory.SaveUser(userData);
                    

                
              
               
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
