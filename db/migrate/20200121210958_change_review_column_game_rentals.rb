class ChangeReviewColumnGameRentals < ActiveRecord::Migration[6.0]
  def change
    change_column :game_rentals, :review_id, :integer, :null => true
  end
end
