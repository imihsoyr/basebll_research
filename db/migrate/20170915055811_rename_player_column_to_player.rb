class RenamePlayerColumnToPlayer < ActiveRecord::Migration
  def change
     rename_column :players, :player, :name
  end
end
