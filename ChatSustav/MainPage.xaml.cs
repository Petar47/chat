namespace ChatSustav;

public partial class MainPage : ContentPage
{
    public MainPage() => InitializeComponent();

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        var username = usernameEntry.Text;
        var password = passwordEntry.Text;

        int? roleId = UserService.Authenticate(username, password);
        if (roleId != null)
        {
            await Shell.Current.GoToAsync($"chat?username={username}&role={roleId}");
        }
        else
        {
            messageLabel.Text = "Neispravni podaci ili uloga nema pristup.";
        }
    }
}
