class BackgroundFacade
  def self.image(location)
    result = BackgroundService.get_pic(location)
    Background.new(result)
  end
end
