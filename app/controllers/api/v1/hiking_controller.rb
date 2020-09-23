class Api::V1::HikingController < ApplicationController

  def index
    render json: HikingSerializer.new(HikingFacade.get_trail_info(params[:location]))
  end

end
