namespace SignalRServer.Models
{
    public enum UserRole
    {
        Programer = 1,
        Skladiste = 2,
        Marketing = 3
    }

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
