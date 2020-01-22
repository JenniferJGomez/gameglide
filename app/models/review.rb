class Review < ApplicationRecord
    belongs_to :game_rental 
    validates :content, presence: true 
    validates :content, presence: true 
end
