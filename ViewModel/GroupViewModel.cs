using CommunityToolkit.Mvvm;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Threading.Tasks;
using TRAIN;

public partial class GroupViewModel : ObservableObject, IQueryAttributable
{
    [ObservableProperty]
    private NewGroupModel _selectedGroup;

    [ObservableProperty]
    private string _idGroup;

    [ObservableProperty]
    private string _nameGroup;

    [ObservableProperty]
    private bool _isIdCopied;

    public GroupViewModel()
    {

    }

    public async void ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.ContainsKey("group"))
        {
            SelectedGroup = query["group"] as NewGroupModel;
            NameGroup = SelectedGroup?.NikAvtor;
            IdGroup = SelectedGroup?.Id;
        }
    }

    [RelayCommand]
    private async Task CopyId()
    {
        if (!string.IsNullOrEmpty(IdGroup))
        {
            await Clipboard.Default.SetTextAsync(IdGroup);
            IsIdCopied = true;
            await Task.Delay(2000);
            IsIdCopied = false;
        }
    }

    [RelayCommand]
    private async Task PeretiLoadedVstre()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup }
        };

        await Shell.Current.GoToAsync("LoadedMetting ", parameters);
    }

    [RelayCommand]
    private async Task PereitiChat()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup }
        };

        await Shell.Current.GoToAsync("ChatGroup", parameters);
    }

    [RelayCommand]
    private async Task PeretiVstre()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup }
        };

        await Shell.Current.GoToAsync("MeetingPage", parameters);
    }

    [RelayCommand]
    private async Task PeretiBid()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup }
        };

        await Shell.Current.GoToAsync("BidPage", parameters);
    }

    [RelayCommand]
    private async Task PeretiLoadedMembers()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup }
        };

        await Shell.Current.GoToAsync("LoadedMembers", parameters);
    }
}