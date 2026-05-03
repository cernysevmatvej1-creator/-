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
    public partial class LoginViewModel : ObservableObject
    {
        private IUserServies _userServies;
        [ObservableProperty]
        private string _nik;
        [ObservableProperty]
        private bool _ischekedbutton;
        public LoginViewModel(IUserServies userServies)
        {
            _userServies = userServies; 
        }

        [RelayCommand]
        private async Task SignAnonimal()
        {
            if (_ischekedbutton)
            {

                var result = await _userServies.SignAnonimal(new User
                {
                    Name = Nik
                });

                if (result.Success)
                {
                
                    if (Application.Current != null)
                    {
                        Application.Current.MainPage = new AppShell();
                    }
                }
                else
                {
                  await DialogHelper.ShowAlert("Ошибка", result.Message);
                }
            }
          await  DialogHelper.ShowAlert("D0","Dd");
        }
    }
}
