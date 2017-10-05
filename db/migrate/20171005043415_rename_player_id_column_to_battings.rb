class RenamePlayerIdColumnToBattings < ActiveRecord::Migration
  def change
    rename_column :battings, :player_id, :batter_id
  end
end
