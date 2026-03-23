using Firebase.Database;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http.Json;
using System.Text;

namespace Group.Repotisiory
{
    public abstract class BaseRepotisiory
    {
        protected FirebaseClient firebaseClient;
        private const string _username = "username";
        
        private const string _firabsetoken = "FirebaseToken";
        private const string _refrsehntoken = "RefreshToken";
      
        public async Task<bool> Authorization()
        {
          

            var reqslet = new
            {
                UserId = Preferences.Get(_username, ""),
                FireBaseToken = Preferences.Get(_firabsetoken, ""),
                FireBaseRefreshToken = Preferences.Get(_refrsehntoken, "")
            };

            HttpClient httpclient = new HttpClient();
            var response = await httpclient.PostAsJsonAsync("https://localhost:44388/api/AuthFirebase/get-token", reqslet);
            var userData = await response.Content.ReadFromJsonAsync<UserJons>();

            if (userData != null)
            {
                 firebaseClient = new FirebaseClient(
"https://group-127dd-default-rtdb.firebaseio.com/",
new FirebaseOptions
{
AuthTokenAsyncFactory = async () => userData.FireBaseToken
});
                Debug.WriteLine(userData.FireBaseToken);
                return true;
            }
            Debug.WriteLine("токен пуст");
            return false;
            


        }
    }
}