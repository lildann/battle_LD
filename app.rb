require "sinatra/base"
require "sinatra/reloader" 
require_relative "lib/player"
require_relative "lib/game"

class Battle < Sinatra::Base # load Sinatra Modular Style into controller
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions #session replaces instance variable to store params

  get '/' do
    erb :index
  end

  post '/names' do #post request gets redirected to get play
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do 
    # @player_1 = $player_1
    # @player_2 = $player_2
    # $game.attack(@player_2)
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end 

  # start the server if ruby file executed directly
  run if app_file == $0
end
