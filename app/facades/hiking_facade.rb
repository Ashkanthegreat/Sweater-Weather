class HikingFacade
  def self.get_trail_info(location)
    coords = MapquestService.new.get_coordinates(location)
    forecast = ForecastService.get_forecast(coords[:lat], coords[:lng])
    latlng = HikingService.get_trails(coords[:lat],coords[:lng])[:trails].map do |trail|
      "#{trail[:latitude]}, #{trail[:longitude]}"
    end
    time = latlng.map do |coordinates|
      MapquestService.new.get_routes(location, coordinates)
    end
    all_trails = HikingService.get_trails(coords[:lat],coords[:lng])
    all_trails[:trails].map.with_index do |trail, index|
      Hiking.new(forecast, time[index], trail, location)
    end
  end
end
