using SignalRServer.Models;
namespace SignalRServer.Services
{ 
    public class MessageStore
    {
        private readonly List<Message> _messages = new();
        private readonly object _lock = new();

        public void AddMessage(Message message)
        {
            lock (_lock)
            {
                _messages.Add(message);
            }
        }

        public List<Message> GetMessagesByRole(int roleId)
        {
            lock (_lock)
            {
                return _messages
                    .Where(m => m.RoleId == roleId)
                    .OrderBy(m => m.Time)
                    .ToList();
            }
        }

        public List<Message> GetPrivateMessages(string user1, string user2)
        {
            lock (_lock)
            {
                return _messages
                    .Where(m =>
                        m.ToUser != null &&
                        ((m.FromUser.Username == user1 && m.ToUser.Username == user2) ||
                         (m.FromUser.Username == user2 && m.ToUser.Username == user1)))
                    .OrderBy(m => m.Time)
                    .ToList();
            }
        }
    }

}
