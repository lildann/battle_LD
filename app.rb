require "sinatra"
require "sinatra/reloader" if development?
require "player"

class Battle < Sinatra::Base #loaded Sinatra into our controller
  enable :sessions #session replaces instance variable to store params

  get '/' do
    erb :index
  end

  post '/names' do #post request gets redirected to get play
    $player = params[:player_1_name]
    $player = params[:player_2_name]
    redirect :play
  end

  get '/play' do
    $player[:player_1_name]
    $player[:player_2_name]
    erb :play
  end

  get '/attack' do 
    $player[:player_1_name]
    $player[:player_2_name]
    erb :attack
  end 

  run if app_file == $0
end
