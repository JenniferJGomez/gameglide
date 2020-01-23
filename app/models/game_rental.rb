class GameRental < ApplicationRecord
    belongs_to :user,required: false 
    belongs_to :game 
    belongs_to :review, required: false
    validates :user_id, presence: true 
    validates :game_id, presence: true 
    

end
