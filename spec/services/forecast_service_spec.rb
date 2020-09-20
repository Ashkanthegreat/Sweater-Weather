require 'rails_helper'

RSpec.describe 'Forecast Service' do
  it 'can get weather info back from Open Weather API' do
    lat = 39.738453
    lng = -104.984853
    service = ForecastService.new.get_forecast(lat, lng)
    expect(service).to be_a Hash
    expect(service).to have_key :current
    expect(service).to have_key :hourly
    expect(service).to have_key :daily
  end

end
