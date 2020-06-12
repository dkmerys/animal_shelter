require 'rails_helper'

describe "put an animal route", :type => :request do
  
  before do
    @animal = Animal.create( {:id => 51, :name => 'Spike', :breed => 'Rottweiler', :age => '2', :gender => 'Male', :quote => 'He speaks French. In Russian.'})
    put '/animals/51', params: { :breed => 'German Shepherd'}
  end

  it 'returns the updated content' do
    expect(JSON.parse(response.body)['message']).to eq('This animal record has been updated successfully.')
  end

  it 'returns an updated status' do
    expect(response).to have_http_status(200)
  end
end