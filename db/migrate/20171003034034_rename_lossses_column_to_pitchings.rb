class RenameLosssesColumnToPitchings < ActiveRecord::Migration
  def change
    rename_column :pitchings, :lossses, :losses
  end
end
