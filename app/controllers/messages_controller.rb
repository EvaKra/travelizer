class MessagesController < ApplicationController
#     def create
#         @chatroom = Chatroom.find(params[:chatroom_id])
#         @message = Message.new(message_params)
#         @message.chatroom = @chatroom
#         @message.user = current_user
#         if @message.save
#             ChatroomChannel.broadcast_to(
#             @chatroom,
#             render_to_string(partial: "message", locals: { message: @message })
#         )
#           redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
#         else
#           render "chatrooms/show"
#         end 
#     end

#     private
    
#     def message_params
#         params.require(:message).permit(:content)
#     end
# end
  before_action do
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def index
    @messages = @chatroom.messages
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @chatroom.messages
    end
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
      redirect_to chatroom_messages_path(@chatroom)
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end