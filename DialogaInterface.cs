using System;
using System.Collections.Generic;
using System.Text;

namespace TRAIN
{
    
        public static class DialogHelper
        {
            public static async Task ShowAlert(string title, string message, string cancel = "OK")
            {
                if (Application.Current?.MainPage != null)
                    await Application.Current.MainPage.DisplayAlert(title, message, cancel);
            }

            public static async Task<bool> ShowConfirmation(string title, string message, string accept = "Да", string cancel = "Нет")
            {
                if (Application.Current?.MainPage != null)
                    return await Application.Current.MainPage.DisplayAlert(title, message, accept, cancel);
                return false;
            }
        }
    
}
