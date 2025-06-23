using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChatSustav.Resources.Klase
{
    public class Message
    {
        public User FromUser { get; set; }
        public User? ToUser { get; set; }
        public string Text { get; set; }
        public DateTime Time { get; set; }
        public int RoleId { get; set; }
    }
}
