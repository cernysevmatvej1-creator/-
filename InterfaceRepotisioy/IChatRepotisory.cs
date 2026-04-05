using Firebase.Database.Streaming;
using Group.Error_correction_system;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Group.InterfaceRepotisioy
{
    public interface IChatRepotisory
    {
        Task<Result> AddMessage(Message message,string getgroupid);
        Task <Result<List<Message>>> LoadedMesage(string getgroupid);
        void Unsubscribe(IDisposable subscription);
        IObservable<FirebaseEvent<Message>> GetMessagesObservable(string getgroupid);
    }
}
