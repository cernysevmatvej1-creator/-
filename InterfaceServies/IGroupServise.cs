using Group.ErrorСorrectionSystem;
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
        Task<Result> AddBid(string groupid,NewGroupModel newGroupModel);
        Task<Result> AddMembers(Bid bid, string getgroupid);
        Task<Result> RemoveBid(Bid bid, string getgroupid);
        Task<Result<List<Bid>>> LoadedBids(string groupid);
        Task<Result<List<User>>> LoadedMembers(string getgroupid);
        Task<Result> DeleteUser(string getgroupid, string keyuser);
        Task<Result> DeleteGroup(string keygroup);
    }
}
