namespace Group
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute("GroupPage", typeof(NewPage1));
            Routing.RegisterRoute("ChatGroup", typeof(ChatGroup));

        }
    }
}
