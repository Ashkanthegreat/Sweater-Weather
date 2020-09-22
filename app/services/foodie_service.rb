class FoodieService
  def self.get_rest_info(lat, lng, food_type)
    response = conn.get("/api/v2.1/search") do |f|
      f.params[:q] = food_type
      f.params[:lat] = lat
      f.params[:lon] = lng
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://developers.zomato.com') do |f|
      f.headers['user-key'] = ENV['ZOMATO_KEY']
    end
  end
end
