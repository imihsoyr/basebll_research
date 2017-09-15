class RenameThrowColumnToPlayer < ActiveRecord::Migration
  def change
    rename_column :players, :throw, :throws
    rename_column :players, :bat, :bats
  end
end
