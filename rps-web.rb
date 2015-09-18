require 'sinatra/base'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  set :views, proc { File.join(root, 'views') }
end