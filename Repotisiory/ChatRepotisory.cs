using Firebase.Database.Query;
using Firebase.Database.Streaming;
using Group.Error_correction_system;
using Group.InterfaceRepotisioy;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Group.Repotisiory
{
    class ChatRepotisory : BaseRepotisiory, IChatRepotisory
    {
  
        public async  Task<Result> AddMessage(Message message,string getgroupid)
        {
            if (!await base.Authorization())
                return Result.Fail("Авторизация прошла неуспешно");
            try
            {
                await firebaseClient.Child("Group").Child(getgroupid).Child("Message").PostAsync(message);
                return Result.Ok();
            }
            catch (Exception e) { 
            return Result.Fail(e.Message);
            }
        }
        public IObservable<FirebaseEvent<Message>> GetMessagesObservable(string getgroupid)
        {
            return firebaseClient
                .Child("Group")
                .Child(getgroupid)
                .Child("Message")
                .AsObservable<Message>();
        }



        public void Unsubscribe(IDisposable subscription)
        {
            subscription?.Dispose();
            
        }
        public async  Task<Result<List<Message>>> LoadedMesage(string getgroupid)
        {
            if(!await base.Authorization())
                return Result<List<Message>>.Fail("Авторизация прошла неуспешно");
            try
            {
                var listmessags = await firebaseClient.Child("Group").Child(getgroupid).Child("Message").OnceAsync<Message>();
                List<Message> messages = new List<Message>();   
                foreach (var message in listmessags) {
                    messages.Add(new Message
                    {
                        Name = message.Object.Name,
                        Messag = message.Object.Messag, 
                        Time = message.Object.Time, 
                    });
                
                }
                return Result<List<Message>>.Ok(messages);  

            }
            catch (Exception e)
            {
                return Result<List<Message>>.Fail(e.Message);
            }
        }
    }
}
