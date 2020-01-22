class Game < ApplicationRecord

    has_many :game_rentals 
    has_many :users, through: :game_rentals
    belongs_to :genre 
    validates :title, presence: true 
    validates :multiplayer, presence: true 
    validates :online, presence: true 
    validates :platform, presence: true 
    
    
    def reviews_content
        review = self.game_rentals.map do |rental|
            rental.review
        end
            review.map do |rev|
                rev.content
            end
    end

    def reviews_rating
        review = self.game_rentals.map do |rental|
            rental.review
        end
            review.map do |rev|
                rev.rating
            end
    end


end

