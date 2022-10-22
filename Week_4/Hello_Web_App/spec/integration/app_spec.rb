require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  include Rack::Test::Methods
  let(:app) { Application.new }

  context "GET to /names" do
    it "returns 200 OK with the right content" do
      response = get("/names", names: 'Julia Mary Karim')
      expect(response.status).to eq(200)
      expect(response.body).to eq('Hello Julia Mary Karim')
    end
  end

  context "GET to /names" do
    it "returns 200 OK with the right content" do
      response = get("/names", names: 'Julia Mary Karim')
      expect(response.status).to eq(200)
      expect(response.body).to eq('Hello Julia Mary Karim')
    end

  context "GET to /hello"
    it "should include HTML data'" do
      response = get('/hello')
      expect(response.status).to eq(200)
      expect(response.body).to include('<h1>Hello!</h1>')
    end
  end
    
  context "POST to /sort-names" do
    it "returns 200 OK with the right content" do
      response = post("/sort-names", names: 'Joe,Alice,Zoe,Julia,Kieran')
      expect(response.status).to eq(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end
end
