using Group.ViewModel;
namespace Group;

public partial class SearhPage : ContentPage
{
	public SearhPage(SearchPageViewModel searchPageViewModel)
	{
		InitializeComponent();
		BindingContext = searchPageViewModel;
	}
}