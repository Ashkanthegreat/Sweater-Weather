require 'rails_helper'

RSpec.describe 'Backgrounds Endpoint' do
  it 'returns an image' do
    location = 'denver, co'

    get "/api/v1/backgrounds?location=#{location}"

    expect(response).to be_successful
    expect(response.content_type).to eq('application/json')

    background = JSON.parse(response.body, symbolize_names: true)
    expect(background).to have_key :data
    expect(background[:data]).to_not be_nil
    expect(background[:data]).to be_a(Hash)
    expect(background[:data]).to have_key(:id)
    expect(background[:data][:id]).to eq(nil)
    expect(background[:data]).to have_key(:type)
    expect(background[:data][:type]).to eq('background')
    expect(background[:data]).to have_key(:attributes)
    expect(background[:data][:attributes].size).to eq(3)
    expect(background[:data][:attributes]).to have_key(:image)
    expect(background[:data][:attributes][:image]).to_not be_nil
    expect(background[:data][:attributes]).to have_key(:credit)
    expect(background[:data][:attributes][:credit]).to be_a(Hash)
    expect(background[:data][:attributes][:credit]).to have_key(:source)
    expect(background[:data][:attributes][:credit][:source]).to_not be_nil
    expect(background[:data][:attributes][:credit]).to have_key(:author)
    expect(background[:data][:attributes][:credit][:author]).to_not be_nil
    expect(background[:data][:attributes][:credit]).to have_key(:logo)
    expect(background[:data][:attributes][:credit][:logo]).to_not be_nil
  end
end
