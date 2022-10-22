require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/hello' do
    return erb(:hello)
  end

  get '/names' do
    names = params[:names]
    return "Hello #{names}"
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]
    return "Thanks #{name}, you sent this message: '#{message}'"
  end

  post '/sort-names' do
    names = params[:names]
    return "#{names.split(",").sort.join(",")}"
  end
end