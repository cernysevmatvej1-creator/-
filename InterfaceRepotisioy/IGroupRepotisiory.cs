using System;
using System.Collections.Generic;
using System.Text;
using Group.Error_correction_system;
using Group.Models;
namespace Group.InterfaceRepotisioy
{
     public interface IGroupRepotisiory
     {
        Task AddGroup(NewGroupModel newGroupModel,string getusrid);
        Task<Result<List<NewGroupModel>>> LoadedGroup(string getuserid);
        Task RemoveGroup(int id);
        Task PublicAddGroup(NewGroupModel newGroupModel);
        Task<Result<NewGroupModel>> SearchGroup(string groupid);
        Task<Result> AddBid(string getuserid,Bid did);
        Task<Result> AddMembers(Bid bid,string getgroupid);
        Task<Result> RemoveBid(Bid bid, string getgroupid);
     }
}
  