class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:user][:username])
<<<<<<< HEAD
        if @user && @user.authenticate(params[:user][:password])
=======
        if @user && @user.authenticate(params[:user][:pasword])
>>>>>>> 729241cc48530bffcd5ef5d4c9a99a5f4550cfbb
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