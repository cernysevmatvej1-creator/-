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
      
        builder.Services.AddSingleton<AppShell>();

        return builder.Build();
    }
}