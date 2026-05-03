using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;

namespace Group.ViewModel
{
    public partial class MeetingPageViewModel : ObservableObject, IQueryAttributable
    {
        [ObservableProperty]
        private string _groupId;
        private IMettingService _mettingService;
        [ObservableProperty]
        private string _time;
        [ObservableProperty]
        private string _mesto;
        public MeetingPageViewModel(IMettingService mettingService)
        {
            _mettingService = mettingService;
        }
        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }
        [RelayCommand]
        private async Task AddMetting()
        { 
           var check = await _mettingService.AddMetting(_groupId,new Metting
           {
               Mesto = _mesto,
               Time = _time
           });
            if(check != null) 
                if(!check.Success)
                    await DialogHelper.ShowAlert("Ошибка",check.Message);
        }
         
    }
}
