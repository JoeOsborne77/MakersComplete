require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods
  let(:app) { Application.new }
  
  context 'POST /albums' do
    it 'returns 200 OK with the right content and creates a new album' do
      response = post(
        '/albums',
        title: 'Voyage',
        release_year: '2022',
        artist_id: '2'
      )
      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/albums')
      expect(response.body).to include('Voyage')
    end
  end

  context 'GET /artists' do
    it 'returns 200 OK with the right content and returns all artists' do
      response = get('/artists')
      expect(response.status).to eq(200)
      expect(response.body).to eq 'Pixies, ABBA, Taylor Swift, Nina Simone, Kiasmos'
    end
  end

  context 'POST /artists' do
    it "returns 200 OK with the right content and creates a new artist" do
      response = post(
        '/artists',
        name: 'Wild Nothing',
        genre: 'Indie',
      )
      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/artists')
      expect(response.body).to eq('Pixies, ABBA, Taylor Swift, Nina Simone, Kiasmos, Wild Nothing')
    end
  end

  context 'GET /albums/:id' do
    it "returns 200 OK with the right album" do
    response = get('/albums/2')
    expect(response.status).to eq(200)
    expect(response.body).to include('<h1>Surfer Rosa</h1>')
    expect(response.body).to include('Release year: 1988')
    expect(response.body).to include('Artist: Pixies')

    end
  end
end
