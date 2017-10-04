class AddPlayerIdToBattings < ActiveRecord::Migration
  def change
    add_column :battings, :player_id, :string
  end
end
