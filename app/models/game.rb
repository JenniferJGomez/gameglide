class Game < ApplicationRecord

    has_many :game_rentals 
    has_many :users, through: :game_rentals
    has_many :reviews, through: :game_rentals
    belongs_to :genre 
    validates :title, presence: true 
    validates :multiplayer, presence: true 
    validates :online, presence: true 
    validates :platform, presence: true 


end

