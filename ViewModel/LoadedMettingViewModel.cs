
using CommunityToolkit.Mvvm;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using Group.Models;

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using TRAIN;

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

            if (mettings.Success)
            {
                _metting.Clear();
                foreach (var metting in mettings.Data)
                {
                    _metting.Add(metting);

                }

            }
        }
        [RelayCommand]
        private async Task Poiti(Metting metting)
        {
          var check =  await  _mettingservice.Poiti(metting,true,GroupId);
           if(check.Success )
             await LoadedMetting();

        
        }
        [RelayCommand]
        private  async Task NoPoiti(Metting metting)
        {
            var check =  await _mettingservice.Poiti(metting, false, GroupId);
            if (check.Success)
                await LoadedMetting();
    
        }

    }
}
