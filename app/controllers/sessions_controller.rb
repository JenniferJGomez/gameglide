class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:pasword])
            session[:user_id]= @user.id
            redirect_to games_path
        else
        flash.notice = "No user found with that name"
        render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/login'

    end
end