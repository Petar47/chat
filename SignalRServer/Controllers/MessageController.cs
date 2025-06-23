using SignalRServer.Models;
using SignalRServer.Services;
using Microsoft.AspNetCore.Mvc;
using SignalRServer.Models;
using SignalRServer.Services;

namespace SignalRServer.Controllers;

[ApiController]
[Route("api/messages")]
public class MessagesController : ControllerBase
{
    private readonly MessageStore _store;

    public MessagesController(MessageStore store)
    {
        _store = store;
    }

    [HttpGet("role/{roleId}")]
    public IActionResult GetByRole(int roleId)
    {
        var msgs = _store.GetMessagesByRole(roleId);
        return Ok(msgs);
    }

    [HttpGet("private")]
    public IActionResult GetPrivate([FromQuery] string user1, [FromQuery] string user2)
    {
        var msgs = _store.GetPrivateMessages(user1, user2);
        return Ok(msgs);
    }

    [HttpPost("sendPrivate")]
    public IActionResult SendPrivate([FromBody] Message msg)
    {
        msg.Time = DateTime.Now;
        _store.AddMessage(msg);
        return Ok("Poruka spremljena.");
    }
}
