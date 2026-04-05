
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


public partial class GroupViewModel : ObservableObject, IQueryAttributable
{
    [ObservableProperty]
    private NewGroupModel _selectedGroup;

    [ObservableProperty]
    private string _idGroup;

    [ObservableProperty]
    private string _nameGroup;

    public GroupViewModel()
    {

    }

    public async void ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.ContainsKey("group"))
        {
            SelectedGroup = query["group"] as NewGroupModel; // Используй свойство, а не поле
            NameGroup = SelectedGroup?.NikAvtor; // Используй свойство, а не поле
            IdGroup = SelectedGroup?.Id; // Используй свойство, а не поле
        }
    }
    [RelayCommand]
    private async Task PereitiChat()
    {
        var parameters = new Dictionary<string, object>
        {
            { "groupId", IdGroup } // Ключ "groupId" совпадает с ключом в ChatGroupViewModel
        };

        await Shell.Current.GoToAsync("ChatGroup", parameters);
    }
}