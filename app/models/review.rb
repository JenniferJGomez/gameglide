class Review < ApplicationRecord
    belongs_to :game_rental 
    belongs_to :user
    validates :content, presence: true 
    validates :rating, presence: true 


end
