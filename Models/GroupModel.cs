using System;
using System.Collections.Generic;
using System.Text;

namespace Group.Models
{
   public  class NewGroupModel
    {
        public string Id { get; set; }
        public string NikAvtor { get; set; }
        public List<Bid> Bids { get; set; } = new List<Bid>();
       
    }
}
