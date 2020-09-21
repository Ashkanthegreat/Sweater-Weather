class ClimbingService

  def get_routes(lat, lng)
    response = conn.get("/data/get-routes-for-lat-lon?lat=#{lat}&lon=#{lng}")
    JSON.parse(response.body, symbolize_names:true)
  end

  private

  def conn
    Faraday.new('https://www.mountainproject.com/data/get-routes-for-lat-lon') do |f|
      f.params['key'] = ENV['CLIMBING_KEY']
    end
  end
end
