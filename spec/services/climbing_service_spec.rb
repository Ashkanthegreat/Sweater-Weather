require 'rails_helper'

RSpec.describe 'Climbing Service' do
  it 'can get a coordinates from a location' do
    service = ClimbingService.new.get_routes('denver, co')
    expect(service).to be_a Hash
  end
end
