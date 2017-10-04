class AddPlayerIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :player_id, :string
  end
end
