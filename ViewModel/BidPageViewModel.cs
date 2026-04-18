using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using TRAIN;

namespace Group.ViewModel
{
    public partial class BidPageViewModel :  ObservableObject, IQueryAttributable
    {
        private IGroupServise _groupServise;
        [ObservableProperty]
        private  ObservableCollection<Bid> _bids;
        [ObservableProperty]
        private string  _groupId;

        public BidPageViewModel(IGroupServise groupServise)
        {
            _bids = new ObservableCollection<Bid>();    
            _groupServise = groupServise;
        }
        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }
        public async Task LoadedBids()
        {
            var listbids  =  await _groupServise.LoadedBids(_groupId);
            foreach (var bid in listbids.Data) { 
            Bids.Add(bid);
            }
            await DialogHelper.ShowAlert("", listbids.Data.Count.ToString());
          
           
        }
        [RelayCommand]
        private async Task YesBid(Bid bid)
        {
            var check =  await _groupServise.AddMembers(bid,bid.GetGroupId);
            if (check.Success)
                Bids.Remove(bid);
        }
        [RelayCommand]
        private async Task NoBid(Bid bid)
        {
            await _groupServise.RemoveBid(bid,bid.GetGroupId);
        }
        
        
    }
}
