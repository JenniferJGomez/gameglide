class GameRentalsController < ApplicationController

    before_action :get_rental, only: [:show, :edit, :update, :destroy]

    def index
        @game_rentals = GameRental.all 
    end

    def show
    end
    
    def new
        @game_rental = GameRental.new
    end

    def create
        @game_rental = GameRental.create(rental_params)
        redirect_to game_rental_path(@game_rental)
    end

    def edit
    end

    def update

    end


    def destroy
        @game_rental.destroy
        redirect_to games_path
    end

    private

    def get_rental
        @game_rental = GameRental.find(params[:id])
    end

    def rental_params
        params.require(:game_rental).permit!
    end

end
