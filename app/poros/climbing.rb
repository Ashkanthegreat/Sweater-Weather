class Climbing
  attr_reader :id,
              :summary


  def initialize(climbing_service, forecast_service)
    @climbing = climbing_service
    @forecast = forecast_service
  end

  def summary
    @forecast[:current][:weather][0][:description]
  end

  def route_location
        @climbing[:routes]
  end
end
