using Group.ViewModel;

namespace Group;

public partial class MettingPage : ContentPage
{
	public MettingPage(MeetingPageViewModel meetingPageViewModel)
	{
		InitializeComponent();
		BindingContext = meetingPageViewModel;	
	}

}