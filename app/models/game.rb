class Game < ApplicationRecord
    has_many :game_rentals 
    has_many :users, through: :game_rentals
    belongs_to :genre 
    
end
