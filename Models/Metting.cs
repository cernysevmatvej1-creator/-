using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace Group.Models
{
    public class Metting
    {



        public string NameAvtorMetting { get; set; }
        public List<WhoWillGo> Users { get; set; } = new List<WhoWillGo>();
        public string Mesto { get; set; }
        public string Time { get; set; }
        public string Key { get; set; }


    }

    
}

