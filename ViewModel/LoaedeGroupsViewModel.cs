
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


namespace Group.ViewModel
{
    using CommunityToolkit.Mvvm.ComponentModel;
    using System.Collections.ObjectModel;
    using Group.Models;

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
                Groups.Clear();
                foreach (var group in loadedgroup.Data)
                {
                   
                    Groups.Add(group);
                    await DialogHelper.ShowAlert("csa",group.Bids.Count.ToString());
               

                }

            } 
            

            catch (Exception ex)
            {
                await DialogHelper.ShowAlert("Ошибка", ex.Message);
            }
        }
    }
}