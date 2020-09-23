require 'rails_helper'

RSpec.describe 'Hiking Service' do
  it 'can get hiking trails using a location' do
    lat = 39.738
    lng = -104.984
    service = HikingService.get_trails(lat, lng)
    expect(service).to be_a(Hash)
    expect(service).to have_key(:trails)
    expect(service[:trails][0]).to have_key(:name)
    expect(service[:trails][0]).to have_key(:summary)
    expect(service[:trails][0]).to have_key(:difficulty)
    expect(service[:trails][0]).to have_key(:location)
    expect(service[:trails][0]).to have_key(:latitude)
    expect(service[:trails][0]).to have_key(:longitude)
  end
end
