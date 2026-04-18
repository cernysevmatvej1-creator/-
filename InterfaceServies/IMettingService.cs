using Group.Error_correction_system;
using Group.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Group.InterfaceServies
{
    public interface IMettingService
    {
        Task<Result> AddMetting(string getgroupid,Metting metting);
        Task<Result> Poiti(Metting metting, bool ifgo, string getgroupid);
        Task<Result<List<Metting>>> LoadedMetting(string getgroupid);
    }
}
