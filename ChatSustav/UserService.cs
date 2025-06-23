using ChatSustav;

public static class UserService
{
    private static Dictionary<string, (string Password, int RoleId)> users = new()
    {
        { "ana", ("123", (int)UserRole.Programer) },
        { "ivan", ("123", (int)UserRole.Skladiste) },
        { "pero", ("123", (int)UserRole.Programer) }
    };

    public static int? Authenticate(string username, string password)
    {
        if (users.TryGetValue(username, out var data) && data.Password == password)
            return data.RoleId;
        return null;
    }
}
