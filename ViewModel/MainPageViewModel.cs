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
    public partial class MainPageViewModel  : ObservableObject
    {

        [ObservableProperty]
        private string _nik;
        [ObservableProperty]
        private string _id;
        private IUserServies _userServies;
        public MainPageViewModel(IUserServies userServies) 
        {
            _userServies = userServies;
        }
        [RelayCommand]
        private async Task SaveNik()
        {
            User user = new User()
            {
                Name = _nik,
                
            };
           var result =  await   _userServies.SaveProfil(user);
            if (result.Success)
                await DialogHelper.ShowAlert("Успешно", "Данные обновлены");
        }
        public async Task LoadedUserProfil()
        {
           var check = await _userServies.LoadedProfil();
            if(check.Data
                != null)
            {
                Nik = check.Data.Name;
                Id = check.Data.Id;
            }
         
        }
    }
}
