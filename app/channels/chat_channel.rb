class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel_#{params["room_id"]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Text.create(text: data["message"], user_id: current_user.id, room_id: params['room_id'])
  end
end
