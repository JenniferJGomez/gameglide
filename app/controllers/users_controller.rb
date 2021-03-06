class UsersController < ApplicationController
before_action :get_user, only: [:show, :edit, :update, :destroy]

def index 
    @users = User.all 
end 

def new
    @user = User.new 
   if current_user.nil?
    render :new
   else    
    redirect_to games_path
   end
    
end 

def create 
    @user = User.create(user_params)
    session[:user_id]= @user.id
    if 
    @user.save 
    redirect_to games_path
        
    else
        render :new
    end
end 

def edit 
end 

def update 
    @user.update(user_params)
    redirect_to user_path(@user)
end 

def destroy 
    @user.destroy
    redirect_to users_path
end 

private 
   
def get_user 
    @user = User.find(params[:id])
end 

def user_params 
    params.require(:user).permit(:username,:password)
end 
end
