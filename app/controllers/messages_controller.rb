class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    @message.save
    broadcast_chatroom
  end

  private

  def broadcast_chatroom
    ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(
        partial: "message",
        locals: { message: @message }
      )
    )
    head :ok
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
