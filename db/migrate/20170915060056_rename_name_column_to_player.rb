class RenameNameColumnToPlayer < ActiveRecord::Migration
  def change
     rename_column :players, :name, :player_name
  end
end
