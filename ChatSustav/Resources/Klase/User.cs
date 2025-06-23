using Newtonsoft.Json;

namespace ChatSustav.Resources.Klase;
public class User
{
    [JsonProperty("username")]
    public string? Username { get; set; }

    [JsonProperty("roleId")]
    public int RoleId { get; set; }

    [JsonProperty("roleName")]
    public string? RoleName { get; set; }

    [JsonIgnore]
    public string Role => RoleHelper.GetRoleName(RoleId);

}
