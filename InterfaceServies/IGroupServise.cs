using Group.Error_correction_system;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Group.InterfaceServies
{
    public  interface IGroupServise
    {
        Task<string> AddGroup(NewGroupModel model);
        Task<Result<List<NewGroupModel>>> LoadedGroups();
        Task<Result<NewGroupModel>> SearchGroup(string groupid);
    }
}
