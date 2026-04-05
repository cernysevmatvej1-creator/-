using System;

namespace Group.Models
{
    public class Message
    {
        public string Messag { get; set; }
        public string Name { get; set; }
        public DateTime Time { get; set; } 

        public Message()
        {
            Time = DateTime.Now; 
        }
    }
}