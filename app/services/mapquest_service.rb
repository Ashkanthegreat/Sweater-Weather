class MapquestService
  def get_coordinates(location)
    response = conn.get('/geocoding/v1/address') do |req|
      req.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]
  end

  def conn
    Faraday.new('http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['MAPQUEST_CLIENT_ID']
    end
  end
end
