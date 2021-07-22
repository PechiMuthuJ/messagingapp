App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    a  = '<div class="event"> <div class="content"><div class="summary"><em style="color:#fe019a">'+data.name+'</em>:'+data.foo+'</div></div></div>'
    $("#pechi").append(a)
    #a = data.foo
    scroll_buttom()
