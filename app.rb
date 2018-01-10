require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @new_text = PigLatinizer.new(params[:text])
    erb :piglatined
  end
end
