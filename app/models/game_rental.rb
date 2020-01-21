class GameRental < ApplicationRecord
    belongs_to :user 
    belongs_to :game 
    belongs_to :review, required: false

    # validates :review_id, :numericality => true, :allow_nil => true
end
