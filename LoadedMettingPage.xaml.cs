
using Group.ViewModel;

namespace Group;

public partial class LoadedMettingPage : ContentPage
{
	LoadedMettingViewModel loadedMettingViewModel;

    public LoadedMettingPage(LoadedMettingViewModel loadedMettingViewModel)
	{
		InitializeComponent();
		BindingContext = loadedMettingViewModel;	
		this.loadedMettingViewModel = loadedMettingViewModel;	
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await loadedMettingViewModel.LoadedMetting();
    }

}
