class RoomMessagesController < ApplicationController
	before_action :load_entities
	before_action :set_message, only: [:show]

  def create
    @room_message = RoomMessage.create user: current_user,
                                       room: @room,
                                       message: params.dig(:room_message, :message)
		
		redirect_to @room_message
  end

	def destroy
		@room_message.destroy
		
    redirect_to room_message_path
	end

  protected

	def set_message
    @room_messages = RoomMessage.all
    @room_message = RoomMessage.find(params[:id]) if params[:id]
  end

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end
