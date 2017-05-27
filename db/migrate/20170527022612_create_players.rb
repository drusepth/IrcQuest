class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :gold
      t.integer :experience
      t.integer :current_health
      t.integer :maximum_health

      t.timestamps null: false
    end
  end
end
