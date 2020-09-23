class MapquestService
  def get_coordinates(location)
    response = conn.get("/geocoding/v1/address?location=#{location}")
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]
  end

  def get_routes(location, trail)
    response = conn.get("/directions/v2/route?from=#{location}&to=#{trail}")
    JSON.parse(response.body, symbolize_names: true)[:route][:time]
  end

  private

  def conn
    Faraday.new('http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['MAPQUEST_CLIENT_ID']
    end
  end
end
