class Forecast
  attr_reader :id,
              :currently,
              :hourly,
              :daily


  def initialize(forecast_info)
    @currently = forecast_info[:current]
    @hourly = forecast_info[:hourly]
    @daily = forecast_info[:daily]
  end
end
