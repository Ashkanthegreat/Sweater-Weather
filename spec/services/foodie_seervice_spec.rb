require 'rails_helper'

RSpec.describe 'Foodie Service' do
  it 'can get restaurant info' do
    lat = 39.738453
    lng = -104.984853
    food_type = 'chinese'
    service = FoodieService.get_rest_info(lat, lng, food_type)

    expect(service).to be_a Hash
    expect(service).to have_key :restaurants
    expect(service[:restaurants][0]).to have_key :restaurant
    expect(service[:restaurants][0][:restaurant]).to have_key :name
    expect(service[:restaurants][0][:restaurant]).to have_key :location
    expect(service[:restaurants][0][:restaurant][:location]).to have_key :address
  end
end
