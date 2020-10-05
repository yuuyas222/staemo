# App.chat = App.cable.subscriptions.create "ChatChannel",
$(document).on "turbolinks:load", ->
      # messages = $("#messages")
    # if $("messages").length > 0
  App.chat = App.cable.subscriptions.create { channel: "ChatChannel", room_id: $("#messages").data("room_id") },
    connected: ->
            # Called when the subscription is ready for use on the server

    disconnected: ->
            # Called when the subscription has been terminated by the server
          
    received: (data) ->
          # Called when there's incoming data on the websocket for this channel
      $("#messages").append data["message"]

    speak: (message)->
      @perform 'speak', message: message


  $(document).on "keypress" , "[data-behavior~=chat_speaker]", (event) ->
    if event.keyCode is 13
      App.chat.speak event.target.value
      event.target.value = ""
      event.preventDefault()
