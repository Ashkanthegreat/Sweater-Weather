class Api::V1::ForecastController < ApplicationController
  def index
    render json: ForecastSerializer.new(Forecast.new(forecast_service))
  end


  private

  def coords
    MapquestService.new.get_coordinates(params[:location])
  end

  def forecast_service
    ForecastService.new.get_forecast(coords[:lat], coords[:lng])
  end
end
