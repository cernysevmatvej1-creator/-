using Group.ViewModel;

namespace Group;

public partial class NewPage1 : ContentPage
{
	public NewPage1(GroupViewModel groupViewModel)
	{
		InitializeComponent();
		BindingContext = groupViewModel;	
	}
}