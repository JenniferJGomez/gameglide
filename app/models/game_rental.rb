class GameRental < ApplicationRecord
    belongs_to :user 
    belongs_to :game 
    belongs_to :review 
end
