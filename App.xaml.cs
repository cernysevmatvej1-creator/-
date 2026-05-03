using Group.InterfaceRepotisioy;
using Group.ViewModel;
using Microsoft.Extensions.DependencyInjection;

namespace Group
{
    public partial class App : Application
    {
        private readonly IServiceProvider _services;

        public App(IServiceProvider services)
        {
            InitializeComponent();
            _services = services;
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            var userRepository = _services.GetService<IUserRepotisory>();
            bool isLoggedIn = userRepository?.GetIsLogin() ?? false;

            Page mainPage;

            if (isLoggedIn)
            {
                mainPage = _services.GetRequiredService<AppShell>();
            }
            else
            {
                mainPage = new NavigationPage(_services.GetRequiredService<LoginPage>());
            }

            return new Window(mainPage);
        }

        public new static App Current => (App)Application.Current;
        public IServiceProvider Services => _services;
    }
}