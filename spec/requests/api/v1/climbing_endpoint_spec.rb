require 'rails_helper'

RSpec.describe 'Climbing Endpoint', type: :request do
  it 'gets weather for starting point' do
    location = 'denver, co'

    get "/api/v1/forecast?location=#{location}"

    expect(response).to be_successful
    expect(response.content_type).to eq('application/json')
  end
end
