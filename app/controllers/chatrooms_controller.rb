class ChatroomsController < ApplicationController
    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
    end

    def index
      @users = User.all
      # @chatrooms = Chatroom.where(sender_id: current_user).or(Chatroom.where(receiver_id: current_user)).order(:updated_at).reverse
      # @chatroom = Chatroom.where(sender_id: current_user).or(Chatroom.where(receiver_id: current_user)).last
      @chatrooms = Chatroom.all
    end

    def create
      if Chatroom.between(params[:sender_id],params[:receiver_id])
        .present?
         @chatroom = Chatroom.between(params[:sender_id],
          params[:receiver_id]).first
      else
        @chatroom = Chatroom.create!(chatroom_params)
      end
        redirect_to chatroom_messages_path(@chatroom)
    end

    private
    def chatroom_params
      params.permit(:sender_id, :receiver_id)
    end
end
