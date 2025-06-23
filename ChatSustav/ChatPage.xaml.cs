using Microsoft.AspNetCore.SignalR.Client;
using System.Collections.ObjectModel;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System.Text.Json;
using ChatSustav.Resources.Klase;
using Newtonsoft.Json;

namespace ChatSustav;

[QueryProperty(nameof(Username), "username")]
[QueryProperty(nameof(RoleId), "role")]
public partial class ChatPage : ContentPage
{
    public string Username { get; set; }
    public int RoleId { get; set; }
    public string RoleName => RoleHelper.GetRoleName(RoleId);
    public User SelectedPrivateChatUser { get; set; }



    private string _currentChatKey;
    private HubConnection _hubConnection;

    public ObservableCollection<string> Messages { get; set; } = new();
    public ObservableCollection<User> Users { get; set; } = new();
    public ObservableCollection<User> FilteredUsers { get; set; } = new();
    public ObservableCollection<string> PrivateMessages { get; set; } = new ObservableCollection<string>();

    public ChatPage()
    {
        InitializeComponent();
        BindingContext = this;

        filterPicker.SelectedIndex = 0;
    }

    protected override async void OnNavigatedTo(NavigatedToEventArgs args)
    {
        base.OnNavigatedTo(args);

        _hubConnection = new HubConnectionBuilder()
            .WithUrl($"http://10.0.2.2:5081/chatHub?username={Username}&role={RoleId}")
            .WithAutomaticReconnect()
            .ConfigureLogging(logging =>
            {
                logging.SetMinimumLevel(LogLevel.Warning);
            })
            .Build();

        _hubConnection.On<string, string>("ReceiveMessage", (user, message) =>
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                Messages.Add($"{user}: {message}");
            });
        });

        _hubConnection.On<string>("UpdateUserList", usersJson =>
        {
            try
            {
                var users = JsonConvert.DeserializeObject<List<User>>(usersJson);

                MainThread.BeginInvokeOnMainThread(() =>
                {
                    if (users != null)
                    {
                        Users.Clear();
                        foreach (var user in users)
                        {
                            Users.Add(user);
                        }
                        Users.Add(new User { Username = "Grupa", RoleId = -1 });

                        ApplyFilter();
                        Messages.Add($"Ažurirani korisnici: {users.Count}");
                    }
                    else
                    {
                        Messages.Add("Korisnici nisu uèitani (null).");
                    }
                });
            }
            catch (Exception ex)
            {
                Messages.Add($"Neoèekivana greška: {ex.Message}");
            }
        });

        _hubConnection.On<string, string>("ReceivePrivateMessage", (fromUser, message) =>
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                if (SelectedPrivateChatUser != null && SelectedPrivateChatUser.Username == fromUser)
                {
                    PrivateMessages.Add($"{fromUser}: {message}");
                }
                else
                {
                    Messages.Add($"[Privatno] {fromUser}: {message}");
                }
            });
        });


        await ConnectToHub();
    }

    private async Task ConnectToHub()
    {
        try
        {
            await _hubConnection.StartAsync();
            await _hubConnection.SendAsync("JoinRoleGroup", RoleId.ToString());

            var starePoruke = await _hubConnection.InvokeAsync<string>("GetMessagesByRole", RoleId);
            try
            {
                var messages = JsonConvert.DeserializeObject<List<Message>>(starePoruke);
                if (messages != null)
                {
                    foreach (var poruka in messages)
                    {
                        Messages.Add($"{poruka.Time:HH:mm} [{poruka.FromUser}]: {poruka.Text}");
                    }
                }
            }
            catch (Exception ex)
            {
                Messages.Add($"Greška pri uèitavanju starih poruka: {ex.Message}");
            }

            Messages.Add($"Spojeni ste kao {Username} ({RoleName})");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Greška", $"Ne mogu se spojiti: {ex.Message}", "OK");
        }
    }

    private void ApplyFilter()
    {
        if (filterPicker != null)
        {
            var filter = filterPicker.SelectedItem?.ToString() ?? "Moja grupa";
            var search = searchEntry.Text?.ToLower() ?? "";

            var filtered = Users.Where(u =>
                (filter == "Svi" || u.RoleId == RoleId) &&
                (string.IsNullOrEmpty(search) || u.Username?.ToLower().Contains(search) == true)
            ).ToList();

            FilteredUsers.Clear();
            foreach (var user in filtered)
                FilteredUsers.Add(user);
        }
    }

    private void FilterPicker_SelectedIndexChanged(object sender, EventArgs e)
    {
        ApplyFilter();
    }

    private void SearchEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        ApplyFilter();
    }

    private async void SendButton_Clicked(object sender, EventArgs e)
    {
        var text = messageEntry.Text;
        if (string.IsNullOrWhiteSpace(text))
            return;

        if (SelectedPrivateChatUser != null)
        {
            await _hubConnection.SendAsync("SendPrivateMessage", Username, SelectedPrivateChatUser.Username, text);
            PrivateMessages.Add($"{Username}: {text}");
        }
        else
        {
            await _hubConnection.SendAsync("SendMessageToRole", RoleId.ToString(), Username, text);
            Messages.Add($"{Username}: {text}");
        }
        messageEntry.Text = string.Empty;
    }

    private async void Logout_Clicked(object sender, EventArgs e)
    {
        var potvrda = await DisplayAlert("Odjava", "Jeste li sigurni da se želite odjaviti?", "Da", "Ne");
        if (!potvrda) return;

        try
        {
            if (_hubConnection != null && _hubConnection.State == HubConnectionState.Connected)
            {
                await _hubConnection.SendAsync("LeaveRoleGroup", RoleId.ToString());
                await _hubConnection.StopAsync();
                await _hubConnection.DisposeAsync();
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Greška", $"Problem pri odjavi: {ex.Message}", "OK");
        }

        await Shell.Current.GoToAsync("//MainPage");
    }
    private async Task UsersListView_ItemTapped(object sender, ItemTappedEventArgs e)
    {
        var clickedUser = e.Item as User;
        if (clickedUser != null)
        {
            if (clickedUser.Username == "Grupa")
            {
                SelectedPrivateChatUser = null;
                PrivateMessages.Clear();
                Messages.Clear();
                Messages.Add("Otvoren grupni chat.");
                await GetMessagesByRole(RoleId);
            }
            else if (clickedUser.Username != Username)
            {
                SelectedPrivateChatUser = clickedUser;
                PrivateMessages.Clear();
                Messages.Clear();

                Messages.Add($"Otvoren privatni chat s {clickedUser.Username}");
                await LoadPrivateMessages(Username, clickedUser.Username);
            }
        }
    }

    private async Task LoadPrivateMessages(string user1, string user2)
    {
        try
        {
            var result = await _hubConnection.InvokeAsync<string>("GetPrivateMessages", user1, user2);
            var messages = JsonConvert.DeserializeObject<List<Message>>(result);

            PrivateMessages.Clear();
            if (messages != null)
            {
                foreach (var msg in messages)
                {
                    PrivateMessages.Add($"{msg.Time:HH:mm} [{msg.FromUser}]: {msg.Text}");
                }
            }
            else
            {
                PrivateMessages.Add("Nema prethodnih poruka.");
            }
        }
        catch (Exception ex)
        {
            PrivateMessages.Add($"Greška pri dohvaæanju privatnih poruka: {ex.Message}");
        }
    }
    private async Task GetMessagesByRole(int roleId)
    {
        try
        {
            var result = await _hubConnection.InvokeAsync<string>("GetMessagesByRole", roleId);
            var messages = JsonConvert.DeserializeObject<List<Message>>(result);

            Messages.Clear();
            PrivateMessages.Clear();

            if (messages != null)
            {
                foreach (var msg in messages)
                    Messages.Add($"{msg.Time:HH:mm} [{msg.FromUser.Username}]: {msg.Text}");
            }
            else
            {
                Messages.Add("Nema poruka u grupi.");
            }
        }
        catch (Exception ex)
        {
            Messages.Add($"Greška pri dohvaæanju grupnih poruka: {ex.Message}");
        }
    }

}