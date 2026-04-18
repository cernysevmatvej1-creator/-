
using Group.ViewModel;

namespace Group;

public partial class BidPage : ContentPage
{
	private BidPageViewModel _viewModel;	
	public BidPage(BidPageViewModel bidPageViewModel)
	{
		InitializeComponent();
		BindingContext =  bidPageViewModel;
		_viewModel = bidPageViewModel;
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.LoadedBids();
		
    }
}