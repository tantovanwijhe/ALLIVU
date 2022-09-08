class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatroom = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

   def create
     @chatroom.provider = provider.find(params[:provider])
     @chatroom = Chatroom.new(chatrooms_params)
     @chatroom.provider = @service.user
     @chatroom.user = current_user
     if @chatroom.save
       redirect_to chatroom_path(@chatroom)
     else
      redirect_to service_path
     end
   end


   def chatrooms_params
    params.require(:chatroom).permit(:name, :current_user, :provider)
  end

end
