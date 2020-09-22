class ForecastService
  def self.get_forecast(lat, lng)
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lng}&exclude=minutely&units=imperial")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://api.openweathermap.org') do |f|
      f.params[:appid] = "#{ENV['OPEN_WEATHER_KEY']}"
    end
  end
end
