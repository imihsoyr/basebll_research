class AddPlayerIdToPitchings < ActiveRecord::Migration
  def change
    add_column :pitchings, :player_id, :string
  end
end
