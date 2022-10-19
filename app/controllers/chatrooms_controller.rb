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
     @chatroom = Chatroom.new(chatrooms_params)
     @chatroom.current_user = current_user.id
       if @chatroom.save
       redirect_to chatroom_path(@chatroom)
     else
      redirect_to service_path
     end
   end


   def chatrooms_params
    params.require(:chatroom).permit(:name, :current_user)
  end

end


#@chat = Chatroom.all
 #   @chatroom = Chatroom.new(chatrooms_params)
  #  @chatroom.current_user = current_user.id
    # @chat.each do |c|
    #   if c.name == @chatroom.name
    #     redirect_to chatroom_path(c)
    #   else @chatroom.save!
     #   redirect_to chatroom_path(@chatroom)
      # end
    # end
