class ForecastFacade
  def self.forecast(location)
    coords = MapquestService.new.get_coordinates(location)
    result = ForecastService.get_forecast(coords[:lat], coords[:lng])
    Forecast.new(result)
  end
end
