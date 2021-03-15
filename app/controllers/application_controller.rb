require "./config/environment"
require 'pry'
class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure do
    enable :sessions
    set :session_secret, "password_security"
    set :views, Proc.new { File.join(root, "../views/") }
  end
  
    get '/' do
      erb :'/application/index'
    end
end