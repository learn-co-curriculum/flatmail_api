class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Api::V1::Message.from_query(params[:filter])
    render json: @messages
  end
end
