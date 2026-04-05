

using Group.ViewModel;

namespace Group;

public partial class ChatGroup : ContentPage
{
	private ChatGroupViewModel _chatGroupViewModel;
	public ChatGroup(ChatGroupViewModel groupViewModel)
	{
		InitializeComponent();
		BindingContext = groupViewModel;	
		_chatGroupViewModel = groupViewModel;
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _chatGroupViewModel.LoadedMesages();
        _chatGroupViewModel.StartListening(); 
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _chatGroupViewModel.StopListening(); 
    }
}