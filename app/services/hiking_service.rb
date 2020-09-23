class HikingService
  def method_name

  end

  private

  def self.conn
    Faraday.new('https://www.hikingproject.com/data') do |f|
      f.params[:key] = "#{ENV['HIKING_PROJECT_KEY']}"
    end
  end

end
