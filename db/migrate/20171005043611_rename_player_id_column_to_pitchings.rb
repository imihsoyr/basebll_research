class RenamePlayerIdColumnToPitchings < ActiveRecord::Migration
  def change
    rename_column :pitchings, :player_id, :pitcher_id
  end
end
