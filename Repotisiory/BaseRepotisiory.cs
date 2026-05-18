using Firebase.Database;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http.Json;
using System.Text;
using Group.ErrorСorrectionSystem;
namespace Group.Repotisiory
{
   
        public abstract class BaseRepotisiory
        {
            protected FirebaseClient firebaseClient;
            private const string _username = "username";
            private const string _firabsetoken = "FirebaseToken";
            private const string _refrsehntoken = "RefreshToken";

 
            private const string _lastAuthTimeKey = "LastAuthTime";
            private const string _cachedTokenKey = "CachedFirebaseToken";


            private const int AUTH_LIFETIME_MINUTES = 10;

     
            private static readonly SemaphoreSlim _authLock = new SemaphoreSlim(1, 1);

       
            private bool IsAuthorizationValid()
            {
                var lastAuthTime = Preferences.Get(_lastAuthTimeKey, DateTime.MinValue);
                var cachedToken = Preferences.Get(_cachedTokenKey, "");

                return !string.IsNullOrEmpty(cachedToken) &&
                       DateTime.Now - lastAuthTime < TimeSpan.FromMinutes(AUTH_LIFETIME_MINUTES) &&
                       firebaseClient != null;
            }


            public async Task<bool> Authorization()
            {
           
                if (IsAuthorizationValid())
                {
                    Debug.WriteLine("Используем кэшированную авторизацию");
                    return true;
                }


                await _authLock.WaitAsync();
                try
                {
                    
                    if (IsAuthorizationValid())
                    {
                        return true;
                    }

                   
                    return await PerformAuthorizationInternal();
                }
                finally
                {
                    _authLock.Release();
                }
            }

            private async Task<bool> PerformAuthorizationInternal()
            {
                var reqslet = new
                {
                    UserId = Preferences.Get(_username, ""),
                    FireBaseToken = Preferences.Get(_firabsetoken, ""),
                    FireBaseRefreshToken = Preferences.Get(_refrsehntoken, "")
                };

                HttpClient httpclient = new HttpClient();
                var response = await httpclient.PostAsJsonAsync("https://groupapi-gaa6.onrender.com/api/AuthFirebase/get-token", reqslet);
                var userData = await response.Content.ReadFromJsonAsync<UserJons>();

                if (userData != null)
                {
                    firebaseClient = new FirebaseClient(
                        "https://group-127dd-default-rtdb.firebaseio.com/",
                        new FirebaseOptions
                        {
                            AuthTokenAsyncFactory = async () => userData.FireBaseToken
                        });

                    Preferences.Set(_lastAuthTimeKey, DateTime.Now);
                    Preferences.Set(_cachedTokenKey, userData.FireBaseToken);

                    Debug.WriteLine(userData.FireBaseToken);
                    Debug.WriteLine("Авторизация успешна, кэшируем на 10 минут");
                    return true;
                }

                Debug.WriteLine("токен пуст");
                return false;
            }

            protected void ResetAuthorizationCache()
            {
                Preferences.Remove(_lastAuthTimeKey);
                Preferences.Remove(_cachedTokenKey);
                firebaseClient = null;
            }

            private Result HandleFirebaseException(Exception ex)
            {
                if (ex is FirebaseException firebaseEx &&
                    firebaseEx.Message.Contains("permission"))
                {
                
                    ResetAuthorizationCache();
                    return Result.Fail("Доступ запрещен");
                }

                System.Diagnostics.Debug.WriteLine($"Firebase error: {ex.Message}");
                return Result.Fail("Произошла ошибка, попробуйте позже");
            }
        }
    }
