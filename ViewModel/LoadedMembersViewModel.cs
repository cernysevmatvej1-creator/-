
using CommunityToolkit.Mvvm;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using TRAIN;


namespace Group.ViewModel
{
    public partial class LoadedMembersViewModel : ObservableObject, IQueryAttributable
    {
        [ObservableProperty]
        private ObservableCollection<User> _members;
        [ObservableProperty]
        private string _groupId;
        private IGroupServise _groupservice;
        public LoadedMembersViewModel(IGroupServise groupservice)
        {
            _groupservice = groupservice;
            _members = new ObservableCollection<User>();
        }
        public async Task LoadedMembers()
        {
            var listusers = await _groupservice.LoadedMembers(GroupId);
            foreach (var user in listusers.Data)
            {
                _members.Add(user);
            }
        }
        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }
        [RelayCommand]
        private async Task DeleteMember(User user)
        {
           var check =  await  _groupservice.DeleteUser(GroupId, user.Id);
        }
    }
}
