require "sinatra/base"
require "sinatra/reloader" 
require_relative "lib/player"

class Battle < Sinatra::Base # load Sinatra Modular Style into controller
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions #session replaces instance variable to store params

  get '/' do
    erb :index
  end

  post '/names' do #post request gets redirected to get play
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect :play
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    erb :play
  end

  get '/attack' do 
    @player_1 = $player1
    @player_2 = $player2
    @player_1.attack(@player_2)
    erb :attack
  end 

  # start the server if ruby file executed directly
  run if app_file == $0
end
