namespace ChatSustav
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute("chat", typeof(ChatPage));
        }
    }
}
