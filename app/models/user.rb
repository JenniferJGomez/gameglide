class User < ApplicationRecord
    has_many :game_rentals 
    has_many :games, through: :game_rentals
    has_many :reviews, through: :game_rentals
end
