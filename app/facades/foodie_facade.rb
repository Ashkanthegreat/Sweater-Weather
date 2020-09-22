class FoodieFacade
  def self.end_city_and_rest_info(location)
    forecast = ForecastService.get_forecast(coords[:lat], coords[:lng])
  end

  def id
    nil
  end

  def coords(start, end_city)
     MapquestService.new.end_city(start, end_city)
  end

  def end_location(start, end_location)
    MapquestService.new.end_city(start, end_city)
  end

  def travel_time
    MapquestService.new.get_routes(start, end_city)
  end

  def forecast_summary
    ForecastService.get_forecast(@coords[:lat], @coords[:lng])[:hourly][0][:weather][0][:description]
  end

  def temp
    ForecastService.get_forecast(@coords[:lat], @coords[:lng])[:hourly][0][:temp]
  end

  def restaurant
    FoodieService.get_rest_info(@coords[:lat], @coords[:lng], food_type)[:restaurants][0][:restaurant][:name]
  end

  def restaurant_address
    FoodieService.get_rest_info(@coords[:lat], @coords[:lng], food_type)[:restaurants][0][:restaurant][:location][:address]
  end
end
