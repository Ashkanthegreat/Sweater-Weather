require 'rails_helper'

RSpec.describe 'MapQuest Service' do
  it 'can get a coordinates from a location' do
    service = MapquestService.new.get_coordinates('denver, co')
    expect(service).to be_a Hash
    expect(service[:lat]).to eq(39.738453)
    expect(service[:lng]).to eq(-104.984853)
  end

  it 'get travel time' do
    service = MapquestService.new.get_routes('denver, co', 'pueblo, co')
  end

  it 'end city lat and long' do
    service = MapquestService.new.end_city('denver, co', 'pueblo, co')
  end

end
