class Forecast
  attr_reader :currently,
              :daily,
              :hourly

  def initialize(forecast_info)
    @currently = forecast_info[:currently]
    @daily = forecast_info[:daily]
    @hourly = forecast_info[:hourly]
  end
end
