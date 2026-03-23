using Group.ViewModel;

namespace Group
{
    public partial class MainPage : ContentPage
    {
        public MainPage(MainPageViewModel mainPageViewModel)
        {
            InitializeComponent();
            BindingContext =  mainPageViewModel;
        }

    
    }
}