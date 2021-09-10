require "sinatra"
require "sinatra/reloader" if development?

class Battle < Sinatra::Base #loaded Sinatra into our controller
  enable :sessions #session replaces instance variable to store params

  get '/' do
    erb :index
  end

  post '/names' do #post request gets redirected to get play
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect :play
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/attack' do 
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end 

  run if app_file == $0
end
