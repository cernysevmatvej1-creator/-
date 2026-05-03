using Group;
using Group.InterfaceRepotisioy;
using Group.InterfaceServies;
using Group.Repotisiory;
using Group.Serves;
using Group.ViewModel;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

        builder.UseMauiApp<App>();

    
        builder.Services.AddSingleton<IGroupRepotisiory, GroupRepotisioty>();
        builder.Services.AddSingleton<IGroupServise, GroupServise>();
        builder.Services.AddSingleton<IUserRepotisory, UserRepotisory>();
        builder.Services.AddSingleton<IUserServies, UserServiece>();
        builder.Services.AddSingleton<IChatServise,ChatService>();
        builder.Services.AddSingleton<IChatRepotisory, ChatRepotisory>();
        builder.Services.AddSingleton<IMettingRepositiory, MettingRepositiory>();
        builder.Services.AddSingleton<IMettingService, MettingServies>();
        builder.Services.AddTransient<NewGroupViewModel>();
        builder.Services.AddTransient<MainPageViewModel>();
        builder.Services.AddTransient<LoaedeGroupsViewModel>();
        builder.Services.AddTransient<SearchPageViewModel>();
        builder.Services.AddTransient<SearhPage>();
        builder.Services.AddTransient<NewGroup>();    
        builder.Services.AddTransient<MainPage>();
        builder.Services.AddTransient<NewPage1>();
        builder.Services.AddTransient<ChatGroup>();
        builder.Services.AddTransient<ChatGroupViewModel>();
        builder.Services.AddTransient<GroupViewModel>();
        builder.Services.AddTransient<LoadedGroup>();
        builder.Services.AddTransient<BidPageViewModel>();
        builder.Services.AddTransient<MeetingPageViewModel>();
        builder.Services.AddTransient<LoadedMettingPage>();
        builder.Services.AddTransient<LoadedMettingViewModel>();
        builder.Services.AddTransient<MettingPage>();
        builder.Services.AddSingleton<AppShell>();
        builder.Services.AddTransient<LoadedMembersViewModel>();
        builder.Services.AddTransient<LoadedMeembers>();
        builder.Services.AddTransient<LoginPage>();
        builder.Services.AddTransient<LoginViewModel>();

        return builder.Build();
    }
}