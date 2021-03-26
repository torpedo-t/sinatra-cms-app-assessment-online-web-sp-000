class UsersController < ApplicationController

    get '/signup' do
        if logged_in?(session)
            redirect to "/videos"
        else
            erb :'users/create_user'
        end
    end

    post '/signup' do
        #binding.pry
        if params["email"] == "" || params["username"] == "" || params["password"] == ""
            redirect to "/signup"
        else
            @user = User.new(:email => params["email"], :username => params["username"], :password => params["password"])
            @user.save 
            session[:user_id] = @user.id 
            redirect to "/videos"
        end
    end

    get '/login' do
        if current_user(session)
            redirect to "/videos"
        else
            erb :'users/login'
        end
    end

    post '/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to "/videos"
        else
            redirect to "/signup"
        end
    end

    get '/logout' do
        if logged_in?(session)
            logout!
            redirect to "/login"
        else
            redirect to "/"
        end
    end
end