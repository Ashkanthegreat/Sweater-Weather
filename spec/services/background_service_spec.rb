require 'rails_helper'

RSpec.describe 'Background Service' do
  it 'can get a background image using a location' do
    location = 'denver, co'
    service = BackgroundService.get_pic(location)

    expect(service).to be_a Hash
    expect(service).to have_key :results
    expect(service[:results]).to be_an Array
    expect(service[:results][0]).to be_a Hash
    expect(service[:results][0]).to have_key :urls
    expect(service[:results][0][:urls]).to be_a Hash
    expect(service[:results][0][:urls]).to have_key :raw
    expect(service[:results][0][:urls][:raw]).to be_a String
  end

end
