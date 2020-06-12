require 'rails_helper'

describe "post an animal route", :type => :request do
  
  before do
    post '/animals', params: {:name => 'Spike', :breed => 'Rottweiler', :age => '2', :gender => 'Male', :quote => 'He speaks French. In Russian.'}
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Spike')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Rottweiler')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq('2')
  end

  it 'returns the animal gender' do
    expect(JSON.parse(response.body)['gender']).to eq('Male')
  end

  it 'returns the animal quote' do
    expect(JSON.parse(response.body)['quote']).to eq('He speaks French. In Russian.')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end