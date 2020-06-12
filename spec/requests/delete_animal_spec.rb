require 'rails_helper'

describe "delete an animal route", :type => :request do
  
  before do
    @animal = Animal.create( {:id => 51, :name => 'Spike', :breed => 'Rottweiler', :age => '2', :gender => 'Male', :quote => 'He speaks French. In Russian.'})
    delete '/animals/51', params: { :breed => 'German Shepherd'}
  end

  it 'returns the deleted content' do
    expect(JSON.parse(response.body)['message']).to eq('This animal record has been successfully deleted.')
  end

  it 'returns a deleted status' do
    expect(response).to have_http_status(200)
  end
end