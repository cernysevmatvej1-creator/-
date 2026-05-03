namespace Group
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute("GroupPage", typeof(NewPage1));
            Routing.RegisterRoute("ChatGroup", typeof(ChatGroup));
            Routing.RegisterRoute("BidPage", typeof(BidPage));
            Routing.RegisterRoute("MeetingPage", typeof(MettingPage));
            Routing.RegisterRoute("LoadedMetting", typeof(LoadedMettingPage));
            Routing.RegisterRoute("LoadedMembers", typeof(LoadedMeembers));
      
        }
    }
}
