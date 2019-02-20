require 'sinatra/base'

class Battle < Sinatra::Base
  attr_reader :player_2_health

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_2_health = "100hp"
    erb :play
  end

 get '/attacked' do
   "Player 2 was attacked!"
 end

  run! if app_file == $0
end
