class RenameWallksColumnToBattings < ActiveRecord::Migration
  def change
    rename_column :battings, :wallks, :walks
  end
end
