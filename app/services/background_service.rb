class BackgroundService
  def self.get_pic(location)
    city = location.split(',').first
    response = conn.get("/search/photos?query=#{city}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://api.unsplash.com/') do |f|
      f.params[:client_id] = "#{ENV['UNSPLASH_KEY']}"
    end
  end
end
