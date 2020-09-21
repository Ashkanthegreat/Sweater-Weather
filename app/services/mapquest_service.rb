class MapquestService
  def get_coordinates(location)
    response = conn.get("/geocoding/v1/address?location=#{location}") 
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]
  end

  private

  def conn
    Faraday.new('http://www.mapquestapi.com') do |f|
      f.params['key'] = ENV['MAPQUEST_CLIENT_ID']
    end
  end
end
