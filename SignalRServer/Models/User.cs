namespace SignalRServer.Models
{
    public class User
    {
        public string? Username { get; set; }
        public int RoleId { get; set; }
        public string RoleName => RoleHelper.GetRoleName(RoleId);
    }

}
