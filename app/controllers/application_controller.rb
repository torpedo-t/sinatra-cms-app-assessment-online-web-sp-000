require "./config/environment"
require 'pry'
require 'sinatra/base'
# require 'rack-flash'

class ApplicationController < Sinatra::Base

  register Sinatra::ActiveRecordExtension
  

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "auth_demo_lv"
  end

  # use Rack::Flash 

  enable :method_override
  
    get '/' do
      erb :'index'
    end

    helpers do
      def current_user(session)
          if logged_in?(session)
              @user = User.find_by_id(session[:user_id])
          else
              return nil
          end
      end

      def logged_in?(session)
          !!session[:user_id]
      end

      def logout!
        session.clear
      end
    end
end