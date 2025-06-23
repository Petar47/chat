using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChatSustav.Resources.Klase
{
    public static class RoleHelper
    {
        public static string GetRoleName(int id) => id switch
        {
            1 => "Programer",
            2 => "Skladiste",
            3 => "Marketing",
            _ => "Nepoznata"
        };
    }
}
