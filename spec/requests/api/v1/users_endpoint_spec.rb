require 'rails_helper'

RSpec.describe "User create" do
  it 'can create a user' do
    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }

    user_params = {
      "email": "me@hotmail.com",
      "password": "1234",
      "password_confirmation": "1234"
    }

    post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(response.content_type).to eq('application/json')
    user = User.last
    expect(user.email).to eq(user_params[:email])
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data][:type]).to eq('user')
    expect(json[:data]).to have_key(:id)
    expect(json[:data][:attributes][:email]).to eq(user_params[:email])
    expect(json[:data][:attributes]).to have_key(:api_key)
  end

  it 'returns full error messages (password matching)' do
    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }

    user_params = {
      email: "me@hotmail.com",
      password: "1233",
      password_confirmation: "1234"
    }

    error = "Password confirmation doesn't match Password"

    post '/api/v1/users', headers: headers, params: user_params.to_json
    expect(response.status).to eq(400)
    message = JSON.parse(response.body, symbolize_names: true)

    expect(message[:body]).to eq(error)
  end

  it 'returns full error messages (email already taken)' do
    User.create!({
      email: "me@hotmail.com",
      password: "1234",
      password_confirmation: "1234"
    })

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }

    user_params = {
      email: "me@hotmail.com",
      password: "1234",
      password_confirmation: "1234"
    }

    error = "Email has already been taken"

    post '/api/v1/users', headers: headers, params: user_params.to_json
    expect(response.status).to eq(400)
    message = JSON.parse(response.body, symbolize_names: true)

    expect(message[:body]).to eq(error)
  end
end
