class Api::V1::BackgroundsController < ApplicationController
  def index
    render json: BackgroundSerializer.new(BackgroundFacade.image(params[:location]))
  end
end
