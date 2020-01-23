class GamesController < ApplicationController
    before_action :logged_in?
    before_action :get_game, only: [:show, :edit, :update, :destroy]

def index 
  @games = current_user.games
end


def new 
    @game = Game.new 
end 

def create 
    @game = Game.create(game_params)
    if 
    @game.save 
    redirect_to game_path(@game)
        
    else
        render :new
    end
end 

def edit 
end 

def update 
    @game.update(game_params)
    redirect_to game_path(@game)
end 

def destroy 
    @game.destroy
    redirect_to games_path
end 

private 
   
def get_game
    @game = Game.find(params[:id])
end 

def game_params 
    params.require(:game).permit(:title, :multiplayer, :online, :platform, :genre_id)
end 
end
