using System;
using System.Collections.Generic;
using System.Text;

namespace Group.Models
{
    public  class Bid
    {
        public User User { get; set; }  
        public string Key { get; set; } 
        public string GetGroupId { get; set; }
    }
}
