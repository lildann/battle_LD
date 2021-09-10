require "sinatra"
require "sinatra/reloader" if development?
require "player"

class Battle < Sinatra::Base #loaded Sinatra into our controller
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
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :play
  end

  get '/attack' do 
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :attack
  end 

  run if app_file == $0
end
