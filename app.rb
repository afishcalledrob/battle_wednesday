require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]) )
    $player_1 = $game.player_1
    $player_2 = $game.player_2
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_HP = $player_1.hp
    @player_2_HP = $player_2.hp
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $game.attack($player_2)
    erb :attack
  end

 run! if app_file == $0
end
