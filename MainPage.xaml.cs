using Group.ViewModel;

namespace Group
{
    public partial class MainPage : ContentPage
    {
        MainPageViewModel mainPageView;
        LoaedeGroupsViewModel LoaedeGroupsViewModel;
        public MainPage(MainPageViewModel mainPageViewModel,LoaedeGroupsViewModel loaedeGroupsViewModel)
        {
            InitializeComponent();
            BindingContext =  mainPageViewModel;
            mainPageView = mainPageViewModel;   
            LoaedeGroupsViewModel = loaedeGroupsViewModel;
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await mainPageView.LoadedUserProfil();
        }


    }
}