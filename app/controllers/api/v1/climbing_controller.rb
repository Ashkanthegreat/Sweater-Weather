class Api::V1::ClimbingController < ApplicationController
  def index
    render json: ClimbingSerializer.new(Climbing.new(climbing_service, forecast_service))
  end

  private

  def coords
    MapquestService.new.get_coordinates(params[:location])
  end

  def forecast_service
    ForecastService.new.get_forecast(coords[:lat], coords[:lng])
  end

  def climbing_service
    ClimbingService.new.get_routes(coords[:lat], coords[:lng])
  end
end
