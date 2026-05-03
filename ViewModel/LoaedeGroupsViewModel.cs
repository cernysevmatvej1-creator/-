
using CommunityToolkit.Mvvm;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;
using CommunityToolkit.Mvvm.ComponentModel;
using System.Collections.ObjectModel;
using Group.Models;

namespace Group.ViewModel
{
 

    public partial class LoaedeGroupsViewModel : ObservableObject
    {
        private readonly IGroupServise _groupServies;

        [ObservableProperty]
        private ObservableCollection<NewGroupModel> _groups; 
        public LoaedeGroupsViewModel(IGroupServise userServies)
        {
            _groupServies = userServies;
            _groups = new ObservableCollection<NewGroupModel>(); 

         
        }

        public async Task LoadedGroup()
        {
            try
            {

                var loadedgroup = await _groupServies.LoadedGroups();
                if (!loadedgroup.Success)
                {
                    await DialogHelper.ShowAlert("Возникла ошибка",loadedgroup.Message);
                    return;
                }
                Groups.Clear();
                foreach (var group in loadedgroup.Data)
                {
                    Groups.Add(group);
          
                }

            } 
            

            catch (Exception ex)
            {
                await DialogHelper.ShowAlert("Ошибка", ex.Message);
            }
        }
        [RelayCommand]
        private async Task Perexod(NewGroupModel newGroupModel)
        {
            try
            {
                var parameters = new Dictionary<string, object>
                {
                    { "group", newGroupModel }
                };

                await Shell.Current.GoToAsync("GroupPage", parameters);
            }
            catch (Exception ex)
            {
                await DialogHelper.ShowAlert("Ошибка", ex.Message);
            }
        }
        [RelayCommand]
        private async Task DeleteGroup(NewGroupModel newGroupModel)
        {
         var check =  await _groupServies.DeleteGroup(newGroupModel.Key);
            if (check.Success)
                await LoadedGroup();
            else
                await DialogHelper.ShowAlert($"Ошибка {newGroupModel.Key}", check.Message);
        }

    }
}