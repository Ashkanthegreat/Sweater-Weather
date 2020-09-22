class MapquestService
  def get_coordinates(location)
    response = conn.get("/geocoding/v1/address?location=#{location}")
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]
  end

  def get_routes(start, end_city)
    response = conn.get("/directions/v2/route?from=#{start}&to=#{end_city}")
    JSON.parse(response.body, symbolize_names: true)[:route][:time]
  end

  def end_city(start, end_city)
    response = conn.get("/directions/v2/route?from=#{start}&to=#{end_city}")
    JSON.parse(response.body, symbolize_names: true)[:route][:boundingBox][:ul]
  end

  private

  def conn
    Faraday.new('http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['MAPQUEST_CLIENT_ID']
    end
  end
end
