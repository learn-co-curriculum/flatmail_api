class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Api::V1::Message.all
    render json: @messages
  end
end
