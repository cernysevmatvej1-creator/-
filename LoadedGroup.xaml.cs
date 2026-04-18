
using Group.ViewModel;

namespace Group;

public partial class LoadedGroup : ContentPage
{
    private readonly LoaedeGroupsViewModel _viewModel;

    public LoadedGroup(LoaedeGroupsViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
        _viewModel = viewModel;
    }

    
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.LoadedGroup();
    }
} 
