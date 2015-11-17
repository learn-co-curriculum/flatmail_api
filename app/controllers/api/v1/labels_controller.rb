class Api::V1::LabelsController < ApplicationController
  def index
    @labels = Api::V1::Label.all
    render json: @labels
  end
end
