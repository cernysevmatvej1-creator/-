using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using TRAIN;

namespace Group.ViewModel
{
    public partial class SearchPageViewModel : ObservableObject
    {
        private IGroupServise _groupServise; 
        [ObservableProperty]
        private string _groupId;
        [ObservableProperty]
        private ObservableCollection<NewGroupModel> _groups;
        public SearchPageViewModel(IGroupServise groupServise)
        {
            _groupServise = groupServise;
            _groups = new ObservableCollection<NewGroupModel>();
        }

        [RelayCommand]
        private async Task SearchGroup()
        {
            var searchgroupmodel = await _groupServise.SearchGroup(_groupId);
            _groups.Clear();
            _groups.Add(searchgroupmodel.Data);
         
        }
        [RelayCommand] 
        private async Task AddBid()
        {
            
        }
    }
}
