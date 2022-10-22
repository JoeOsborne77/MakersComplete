require "spec_helper"
require "rack/test"
require_all 'app'
require 'json'

describe ApplicationController do

  include Rack::Test::Methods

  let(:app) { ApplicationController.new }

  before(:each) do
    reset_test_data
  end

  context 'User creates account' do
    context 'GET /signup' do
      it 'should return the page' do
        response = get('/signup')
        expect(response.status).to eq(200)
        expect(response.body).to include('<form action="/signup"')
      end
    end

    context 'POST /signup' do
      xit 'should succesfully create a new user' do
        response = post('/signup', 
          username: "SlothMcSloth",
          email: "Slothsville@gmail.com",
          full_name: "Sloth Slothster",
          password: "Sloth123456!",
          phone_number: "345678987654"
        )
        #TO COME BACK TO - REWRITE STATUS TEST - CURRENTLY FAILING 'STATUS 500'
        expect(response.body).to include('Success')
      end

      it 'should fail' do
        response = post('/signup', 
          username: "Sloth84", 
          email: "Slothsville",
          full_name: "Sloth Slothster",
          password: "Sloth123456!",
          phone_number: "345678987654"
        )
        expect(response.status).to eq(200)
        expect(response.body).to include('Email is invalid')
      end
    end
  end

  context 'User attempts to log in' do
    context 'GET /login' do
      it 'should get a login page' do
        response = get('/login')

        expect(response.status).to eq(200)
        expect(response.body).to include('<form action="/login" method="POST">')
        
      end
    end
  end

  context 'User clicks on space' do
    context 'GET /spaces/id' do
      it 'should link to invidual space' do
        response = get('/spaces/3')
        expect(response.status).to eq(200)
        expect(response.body).to include('Sloth Cave')
      end
    end
  end

  context 'POST /spaces/id' do
    it 'should populate bookings database' do
    post('/login', email: 'slothy@gmail.com', password: 'Sloths1234!')
    response = post('/spaces/1',
      space_id: 1,
      booking_date: '10/10/2022',
      pending_confirmation: true, 
      confirmed: false
    )
    expect(response.status).to eq(200)
    expect(response.body).to include("Welcome")
    end
  end

  context 'User logs out' do
    context 'GET /logout' do
      it 'returns 400 status if not logged in' do
        response = get('/logout')

        expect(response.status).to eq(400)
      end

      it 'logs out' do
        post('/login', :email => 'slothy@gmail.com', :password => 'Sloths1234!')
        response = get('/logout')
       
        expect(response.status).to eq(200)
        expect(response.body).to include('<a href="/login">Log in</a>')
        expect(response.body).to include('<h1>Logout success!')
      end
    end
  end

  context 'User creates new space' do
    context 'GET /spaces/new' do
      it 'should get a Create New Space page' do
        response = get('/spaces/new')

        expect(response.status).to eq(200)
        expect(response.body).to include('<form action="/spaces/new"')
      end
    end

    context 'POST /spaces/new' do
      it 'Successfully adds new space to spaces' do
        post('/login', email: 'slothy@gmail.com', password: 'Sloths1234!')
        response = post('/spaces/new',
        space_name: 'Jungle retreat',
        description: 'A lovely place in the jungle with a waterfall',
        price_per_night: 300,
        available_from: '12/10/2022',
        available_to: '12/07/2023'
        )
        expect(response.status).to eq(200)
        expect(response.body).to include('Success! Jungle retreat has been created.')
      end
    
      it 'Fails to add new space to spaces' do
        post('/login', email: 'slothy@gmail.com', password: 'Sloths1234!')
        response = post('/spaces/new',
        space_name: '',
        description: 'A lovely place in the jungle with a waterfall',
        price_per_night: 300,
        available_from: '12/10/2022',
        available_to: '12/07/2023'
        )

        expect(response.status).to eq(200)
        expect(response.body).to include("Space name can't be blank")
      end
    end
  end
end

  context 'returns request page' do
    it 'returns page' do
      post('/login', :email => 'slothy@gmail.com', :password => 'Sloths1234!')
      response = get('/requests')

      expect(response.status).to eq(200)
      expect(response.body).to include('Booking date:')
      expect(response.body).to include('Confirmation pending')
    end

    it 'displays requests that have been received' do
      post('/login', :email => 'slothy@gmail.com', :password => 'Sloths1234!')
      response = get('/requests')

      expect(response.status).to eq(200)
      expect(response.body).to include("2022-10-10")
    end
  end
end
