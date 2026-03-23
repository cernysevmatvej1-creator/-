using Group.ViewModel;
using Microsoft.Extensions.DependencyInjection;

namespace Group
{
    public partial class App : Application
    {
        private readonly IServiceProvider _services;
       
        public App(IServiceProvider services,NewGroupViewModel newGroupViewModel) 
        {
            InitializeComponent();
            _services = services;
       

        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
        
            var shell = _services.GetRequiredService<AppShell>();
         
            return new Window(shell);
        }
        public new static App Current => (App)Application.Current;
        public IServiceProvider Services => _services;
    }
}