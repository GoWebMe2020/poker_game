require 'sinatra/base'
require 'sinatra/reloader'

class PokerGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Poker'
  end

  run! if app_file == $0
end
