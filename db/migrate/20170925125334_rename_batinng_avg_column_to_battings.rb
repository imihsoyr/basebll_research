class RenameBatinngAvgColumnToBattings < ActiveRecord::Migration
  def change
    rename_column :battings, :batinng_avg, :batting_avg
  end
end
