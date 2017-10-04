class ChangeDatatypeInningsPitchedOfPitchings < ActiveRecord::Migration
  def change
    change_column :pitchings, :innings_pitched, :float
  end
end
