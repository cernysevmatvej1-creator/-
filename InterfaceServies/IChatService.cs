using Group.ErrorСorrectionSystem;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
namespace Group.InterfaceServies
{
    public interface IChatServise
    {
        Task<Result> AddMessage(string messsge,string getidgroup);
        Task<Result<List<Message>>> LoadedMessage(string getidgroup);
        void Unsubscribe();
        void Subscribe(ObservableCollection<Message> Messages, string getgroupid);

    }
}
