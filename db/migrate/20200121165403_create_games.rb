class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.boolean :multiplayer
      t.boolean :online
      t.string :platform

      t.timestamps
    end
  end
end
