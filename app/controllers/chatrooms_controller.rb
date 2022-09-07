class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

  end

  def index
    @chatroom = Chatrooms.all
    
  end
end
