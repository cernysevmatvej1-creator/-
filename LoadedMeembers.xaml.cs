using Group.ViewModel;

namespace Group;

public partial class LoadedMeembers : ContentPage
{
	LoadedMembersViewModel viewModel;

    public LoadedMeembers(LoadedMembersViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
		this.viewModel = viewModel;
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await viewModel.LoadedMembers();
    }

}