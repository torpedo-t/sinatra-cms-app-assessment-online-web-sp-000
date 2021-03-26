# require 'rack-flash'
class VideosController < ApplicationController
    # use Rack::Flash
    get '/videos' do
        if current_user(session)
            @user = current_user(session)
            @videos = Video.all
            @users = User.all
            erb :'videos/videos'
        else
            redirect to "/login"
        end
    end

    get '/videos/new' do
        if current_user(session)
            erb :'videos/new'
        else
            redirecto to "/login"
        end
    end

    post '/videos' do
        if current_user(session) && params["name"] != "" && params["category"] != ""
            @user = current_user(session)
            @video = Video.new(:name => params[:name], :category => params[:category])
            @video.user_id = @user.id
            @user.videos << @video
            @video.save
            # flash.next[:message] = "You have successfully shared a video."
            redirect to "/videos/#{@video.id}"
        else
            # flash.next[:message] = "You can not leave the name or category field blank."
            redirect to "/videos/new"
        end
    end

    get '/videos/:id' do
        if current_user(session)
            @user = current_user(session)
            @video = Video.find_by_id(params[:id])
            @video.user_id = @user.id
            erb :'/videos/show_video'
        else
            redirect to "/login"
        end
    end

    get '/videos/:id/edit' do
        if current_user(session)
            @user = current_user(session)
            @video = Video.find_by_id(params[:id])
            erb :'/videos/edit_video'
        else
            redirect to "/login"
        end
    end

    patch '/videos/:id' do
        if current_user(session)
            if params["name"] == "" || params["category"] == ""
                @video = Video.find_by_id(params[:id])
                @video.name = params["name"]
                @video.category = params["category"]
                @video.save
                # flash.next[:message] = "You can not leave the name or category field blank."
                redirect to "/videos/#{@video.id}/edit" 
                # add a message that instructs user to not leave name or length of time blank
            else
                @video = Video.find_by_id(params[:id])
                @video.name = params["name"]
                @video.category = params["category"]
                @video.save
                # flash.next[:message] = "You have successfully updated your video."
                erb :'videos/show_video'
            end
        end
    end

    post '/videos/:id/delete' do
        if logged_in?(session)
            @video = Video.find_by_id(params[:id])
            if @video && current_user(session) == @video.user
                @video.destroy
                redirect to "/videos"
            end
        end
    end
end