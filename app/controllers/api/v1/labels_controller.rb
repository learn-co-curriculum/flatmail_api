class Api::V1::LabelsController < ApplicationController
  def index
    @labels = Label.all
    render json: @labels
  end
end
