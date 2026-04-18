using CommunityToolkit.Mvvm;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;

namespace Group.ViewModel
{
    public  partial class NewGroupViewModel : ObservableObject
    {

        [ObservableProperty]
        private string _nik;
        [ObservableProperty]
        private string _description;
        private IGroupServise _groupServise;
        
        public NewGroupViewModel(IGroupServise groupServise)
        {
          _groupServise = groupServise;
        }

        [RelayCommand]
        private async Task Save()
        {
            NewGroupModel model = new NewGroupModel()
            {
                Id  = Guid.NewGuid().ToString(),    
                NikAvtor = _nik,
                Description = _description, 
            };
         
           var check = await _groupServise.AddGroup(model);
           await DialogHelper.ShowAlert("",check);

        }
    }
}
