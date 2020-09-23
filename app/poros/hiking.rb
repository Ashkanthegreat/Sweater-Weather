class Hiking
  attr_reader :id,
              :time,
              :forecast,
              :temperature,
              :name,
              :summary,
              :difficulty,
              :location,
              :forecast_summary,
              :start_location

  def initialize(forecast, time, trail, location)
    @start_location = location
    @time = time
    @temperature = forecast[:current][:temp]
    @forecast_summary = forecast[:current][:weather][0][:description]
    @name = trail[:name]
    @summary = trail[:summary]
    @difficulty = trail[:difficulty]
    @location = trail[:location]
  end
end
