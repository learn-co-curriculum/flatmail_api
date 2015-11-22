class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.from_query(params[:filter])
    render json: @messages
  end

  def update
    @message = Message.find(params[:id])
    @message.update(safe_message)
    render json: @message
  end

  private

  def safe_message
    params.require(:message).permit(:archived, :body, :from, :starred, :archived, :to)
  end
end
