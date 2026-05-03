using Group.ErrorСorrectionSystem;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Group.InterfaceRepotisioy
{
    public interface IMettingRepositiory
    {
        Task<Result> AddMetting(string getgroupid,Metting metting);
        Task<Result<List<Metting>>> LoadedMetting(string getgroupid);
        Task<Result> Poiti(string getgroupid, string key, Metting metting);
    }
}
