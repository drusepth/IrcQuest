class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, unique: true
      t.integer :gold, default: 0
      t.integer :experience, default: 0
      t.integer :current_health, default: 100
      t.integer :maximum_health, default: 100

      t.timestamps null: false
    end
  end
end
