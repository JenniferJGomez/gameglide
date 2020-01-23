class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end
    end
    def logged_in?
       current_user
    end
    def authorized
        redirect_to "/signup" unless logged_in?
    end  

end
