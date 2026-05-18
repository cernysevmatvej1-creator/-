using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using Group.Models;
using Microsoft.Maui.ApplicationModel;
using System;
using System.Diagnostics;
using TRAIN;

namespace Group.ViewModel
{
    public partial class LoginViewModel : ObservableObject
    {
        private readonly IUserServies _userServies;

        [ObservableProperty]
        private string _nik;

        [ObservableProperty]
        private bool _ischekedbutton;

        // Ссылки на документы (Google Sites)
        private const string PrivacyPolicyUrl = "https://sites.google.com/view/sitespolitikagroup/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0";
        private const string UserAgreementUrl = "https://sites.google.com/view/sitespolitikasoglaniegroup/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0";
        private const string DataProcessingUrl = "https://sites.google.com/view/sitesoblabotkagroup/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0";

        public LoginViewModel(IUserServies userServies)
        {
            _userServies = userServies;
        }

        [RelayCommand]
        private async Task SignAnonimal()
        {
            if (!Ischekedbutton)
            {
                await DialogHelper.ShowAlert("Требуется согласие", "Пожалуйста, ознакомьтесь и примите условия использования");
                return;
            }

            if (string.IsNullOrWhiteSpace(Nik))
            {
                await DialogHelper.ShowAlert("Ошибка", "Пожалуйста, введите ваш никнейм");
                return;
            }

            var result = await _userServies.SignAnonimal(new User
            {
                Name = Nik.Trim()
            });

            if (result.Success)
            {
                if (Application.Current != null)
                {
                    await DialogHelper.ShowAlert("Успех", result.Message);
                    Application.Current.MainPage = new AppShell();
                }
            }
            else
            {
                await DialogHelper.ShowAlert("Ошибка", result.Message);
            }
        }

        [RelayCommand]
        private async Task OpenPrivacyPolicy()
        {
            await OpenUrl(PrivacyPolicyUrl);
        }

        [RelayCommand]
        private async Task OpenUserAgreement()
        {
            await OpenUrl(UserAgreementUrl);
        }

        [RelayCommand]
        private async Task OpenDataProcessing()
        {
            await OpenUrl(DataProcessingUrl);
        }

        private static async Task OpenUrl(string url)
        {
            try
            {
                await Browser.OpenAsync(url, BrowserLaunchMode.SystemPreferred);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка открытия браузера: {ex.Message}");
                await DialogHelper.ShowAlert("Ошибка", "Не удалось открыть страницу. Проверьте интернет-соединение.");
            }
        }
    }
}