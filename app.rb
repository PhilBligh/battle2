require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    @player_2 = params[:player_2_name] 
    erb :play
  end

end
