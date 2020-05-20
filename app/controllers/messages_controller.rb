class MessagesController < ApplicationController

  before_action do
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def index
    @messages = @chatroom.messages
    # if @messages.last
    #   if @messages.last.user_id != current_user.id
    #     @messages.last.read = true;
    #   end
    # end
    @message = @chatroom.messages.new
  end

  def new
    @message = @chatroom.messages.new
  end

  def create
    @message = @chatroom.messages.new(message_params)
    if @message.save
      ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to chatroom_messages_path(@chatroom, anchor: "message-#{@message.id}")
      end
  end

  private
  
  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end