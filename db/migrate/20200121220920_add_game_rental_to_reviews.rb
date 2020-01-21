class AddGameRentalToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :game_rental_id, :integer
  end
end
