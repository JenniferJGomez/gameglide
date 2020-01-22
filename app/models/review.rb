class Review < ApplicationRecord
    belongs_to :game_rental 
    validates :content, presence: true 
    validates :rating, presence: true 
end
