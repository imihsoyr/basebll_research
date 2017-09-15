class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
t.string :player
t.string :backnumber
t.string :team
t.date :date_of_birth
t.integer :height
t.integer :weight
t.string :throw
t.string :bat
t.string :positions
t.integer :salary
t.integer :year
      t.timestamps
    end
  end
end
