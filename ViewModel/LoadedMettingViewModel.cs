
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
using System.ComponentModel;

namespace Group.ViewModel
{


    public partial class LoadedMettingViewModel : ObservableObject, IQueryAttributable
    {
        [ObservableProperty]
        private ObservableCollection<Metting> _metting;
        [ObservableProperty]
        private string _groupId;
       
        private IMettingService _mettingservice;
        public LoadedMettingViewModel(IMettingService mettingservice)
        {
            _mettingservice = mettingservice;
            _metting = new ObservableCollection<Metting>();
        }

        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }
        public async Task LoadedMetting()
        {
            var mettings = await _mettingservice.LoadedMetting(GroupId);
            
            await DialogHelper.ShowAlert("Ошибка", mettings.Data.Count.ToString());
            foreach (var metting in mettings.Data)
            {
                _metting.Add(metting);
                await DialogHelper.ShowAlert("Ошибка", metting.Mesto);
            }


        }
        [RelayCommand]
        private async Task Poiti(Metting metting)
        {
          await  _mettingservice.Poiti(metting,true,GroupId);
        }
        [RelayCommand]
        private  async Task NoPoiti(Metting metting)
        {
            await _mettingservice.Poiti(metting, false, GroupId);
        }

    }
}
