require 'rails_helper'

RSpec.describe 'Forecast endpoint', type: :request do
  it 'returns weather' do
    location = 'denver, co'

    get "/api/v1/forecast?location=#{location}"

    expect(response).to be_successful
    expect(response.content_type).to eq('application/json')  
  end
end
