using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.SignalR;
using Microsoft.Extensions.Hosting;
using System.Net;
using System.Net.Sockets;
using System.Text.Json;
using SignalRServer.Models;
using SignalRServer.Services;
using Newtonsoft.Json;
using JsonSerializer = System.Text.Json.JsonSerializer;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.AllowAnyHeader()
              .AllowAnyMethod()
              .AllowAnyOrigin();
    });
});

builder.Services.AddSignalR();

builder.Services.AddSingleton<MessageStore>();

var app = builder.Build();

app.Urls.Clear();
app.Urls.Add("http://0.0.0.0:5081");

app.UseCors();

app.MapHub<ChatHub>("/chatHub");

app.Run();



public class ChatHub : Hub
{
    private static readonly Dictionary<string, User> ConnectedUsers = new();
    private static readonly List<Message> AllMessages = new();
    private readonly MessageStore _store;

    public ChatHub(MessageStore store)
    {
        _store = store;
    }


    public override async Task OnConnectedAsync()
    {
        var ip = GetLocalIPAddress();
        Console.WriteLine($"Server pokrenut na IP: {ip}:5081");
        Console.WriteLine($"Za Android emulator koristite: 10.0.2.2:5081");

        var httpContext = Context.GetHttpContext();
        var username = httpContext?.Request.Query["username"].ToString();
        var roleString = httpContext?.Request.Query["role"].ToString();

        if (!int.TryParse(roleString, out int roleId))
        {
            await Clients.Caller.SendAsync("ReceiveMessage", "Server", "Nevažeæa uloga.");
            return;
        }

        var user = new User { Username = username, RoleId = roleId };
        ConnectedUsers[Context.ConnectionId] = user;

        Console.WriteLine($"[SPOJEN] {username} ({user.RoleName}) - ConnID: {Context.ConnectionId}");

        Console.WriteLine("Trenutni korisnici:");
        foreach (var u in ConnectedUsers.Values)
        {
            Console.WriteLine($" - {u.Username} ({u.RoleName})");
        }

        await Groups.AddToGroupAsync(Context.ConnectionId, roleId.ToString());

        await Clients.All.SendAsync("ReceiveMessage", "Server", $"{username} se pridružio kao {user.RoleName}");

        var usersJson = JsonSerializer.Serialize(ConnectedUsers.Values.ToList());
        await Clients.All.SendAsync("UpdateUserList", usersJson);

        await base.OnConnectedAsync();
    }

    public override async Task OnDisconnectedAsync(Exception exception)
    {
        if (ConnectedUsers.TryGetValue(Context.ConnectionId, out var user))
        {
            Console.WriteLine($"[ODJAVLJEN] {user.Username} ({user.RoleName})");
        }

        ConnectedUsers.Remove(Context.ConnectionId);

        var usersJson = JsonSerializer.Serialize(ConnectedUsers.Values.ToList());
        await Clients.All.SendAsync("UpdateUserList", usersJson);

        await base.OnDisconnectedAsync(exception);
    }

    public async Task JoinRoleGroup(string roleId)
    {
        await Groups.AddToGroupAsync(Context.ConnectionId, roleId);
        await Clients.Group(roleId).SendAsync("ReceiveMessage", "Server", $"{Context.ConnectionId} se pridružio grupi {RoleHelper.GetRoleName(int.Parse(roleId))}");
    }

    public async Task SendMessageToAll(string user, string message)
    {
        await Clients.All.SendAsync("ReceiveMessage", user, message);
    }

    public async Task LeaveRoleGroup(string roleId)
    {
        await Groups.RemoveFromGroupAsync(Context.ConnectionId, roleId);
        await Clients.Group(roleId).SendAsync("ReceiveMessage", "Server", $"{Context.ConnectionId} je napustio grupu {RoleHelper.GetRoleName(int.Parse(roleId))}");
    }

    public async Task UpdateUsersList()
    {
        var usersJson = JsonSerializer.Serialize(ConnectedUsers.Values.ToList());
        await Clients.All.SendAsync("UpdateUserList", usersJson);
    }
    public async Task SendPrivateMessage(string fromUsername, string toUsername, string message)
    {
        var fromUser = ConnectedUsers.Values.FirstOrDefault(u => u.Username == fromUsername);
        var toUser = ConnectedUsers.Values.FirstOrDefault(u => u.Username == toUsername);

        if (toUser == null)
        {
            await Clients.Caller.SendAsync("ReceiveMessage", "Server", $"{toUsername} nije dostupan.");
            return;
        }

        var msg = new Message
        {
            FromUser = fromUser,
            ToUser = toUser,
            Text = message,
            Time = DateTime.Now,
            RoleId = toUser?.RoleId ?? 0
        };

        lock (AllMessages)
        {
            AllMessages.Add(msg);
        }
        _store.AddMessage(msg);
        var toConnectionId = ConnectedUsers.FirstOrDefault(kv => kv.Value.Username == toUsername).Key;
        if (toConnectionId != null)
        {
            await Clients.Client(toConnectionId).SendAsync("ReceivePrivateMessage", fromUsername, message);
        }
    }


    public async Task SendMessageToRole(string roleId, string username, string message)
    {
        if (!int.TryParse(roleId, out int rId)) return;

        var fromUser = ConnectedUsers.Values.FirstOrDefault(u => u.Username == username);

        if (fromUser == null)
        {
            await Clients.Caller.SendAsync("ReceiveMessage", "Server", "Nepoznat korisnik.");
            return;
        }

        var msg = new Message
        {
            FromUser = fromUser,
            ToUser = null,
            Text = message,
            RoleId = rId,
            Time = DateTime.Now
        };

        lock (AllMessages)
        {
            AllMessages.Add(msg);
        }
        _store.AddMessage(msg);

        await Clients.Group(roleId).SendAsync("ReceiveMessage", fromUser.Username, message);

        
        await Clients.Group(roleId.ToString()).SendAsync("ReceiveMessage", fromUser.Username, message);
    }


    public Task<string> GetMessagesByRole(int roleId)
    {
        lock (AllMessages)
        {
            var messages = AllMessages
                .Where(m => m.RoleId == roleId)
                .OrderBy(m => m.Time)
                .ToList();

            return Task.FromResult(JsonSerializer.Serialize(messages));
        }
    }

    public static string GetLocalIPAddress()
    {
        var host = Dns.GetHostEntry(Dns.GetHostName());
        foreach (var ip in host.AddressList)
        {
            if (ip.AddressFamily == AddressFamily.InterNetwork)
            {
                return ip.ToString();
            }
        }
        throw new Exception("Nema IPv4 mrežnog adaptera!");
    }

}