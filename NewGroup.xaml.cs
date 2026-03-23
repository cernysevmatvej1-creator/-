using Group.ViewModel;
using Group.InterfaceRepotisioy;
namespace Group;

public partial class NewGroup : ContentPage
{
	public NewGroup(NewGroupViewModel newGroupViewModel)
	{
		InitializeComponent();
	    BindingContext = newGroupViewModel;
	}
}