require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/cross_origin'
require_relative './lib/poker.rb'

class PokerGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
   
    erb :poker
  end

  get '/draw-cards' do
    @poker = Poker.new
    @poker.draw
    @rank_hand = PokerHandRank.new
    erb :poker
  end

  get '/input-hand' do
    @poker = Poker.new
    @input_hand = params[:current_hand].upcase
    @rank_hand = PokerHandRank.new
    erb :poker
  end

  run! if app_file == $0
end
