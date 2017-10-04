class RenameConpleteGameColumnToPitchings < ActiveRecord::Migration
  def change
    rename_column :pitchings, :conplete_game, :complete_game
  end
end
