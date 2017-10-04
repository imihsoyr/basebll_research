class RenameCaugthStealColumnToBattings < ActiveRecord::Migration
  def change
    rename_column :battings, :caugth_steal, :caught_steal
  end
end
