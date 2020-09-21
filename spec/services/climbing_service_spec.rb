require 'rails_helper'

RSpec.describe 'Climbing Service' do
  it 'can get a coordinates from a location' do
    service = ClimbingService.new.get_routes(39.738453, -104.984853)
    expect(service).to be_a Hash
    expect(service).to have_key :routes
    expect(service[:routes]).to be_an Array
  end
end
