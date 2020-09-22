class BackgroundService
  def get_pic
    response = conn.get()
  end

  private

  def conn
    Faraday.new('https://api.openweathermap.org') do |f|
      f.params[:appid] = "#{ENV['OPEN_WEATHER_KEY']}"
    end
  end
end
