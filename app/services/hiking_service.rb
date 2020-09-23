class HikingService
  def self.get_trails(lat, lng)
    response = conn.get("/data/get-trails?lat=#{lat}&lon=#{lng}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://www.hikingproject.com') do |f|
      f.params[:key] = "#{ENV['HIKING_PROJECT_KEY']}"
    end
  end

end
