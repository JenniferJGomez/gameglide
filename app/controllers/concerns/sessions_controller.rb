class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:pasword])
            session[:user_id]= user.id
        end
    end

    def destroy
        session.clear
        redirect_to '/login'

    end
end