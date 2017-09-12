class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :player
      t.string :team
      t.integer :game
      t.integer :plate_appearance
      t.integer :homerun
      t.integer :run
      t.integer :runs_batted_in
      t.integer :stolen_base
      t.float :bb_persent
      t.float :k_persent
      t.float :iso
      t.float :babip
      t.float :average
      t.float :obp
      t.float :slg
      t.float :woba
      t.integer :wrc_plus
      t.float :bsr
      t.float :offence
      t.float :deffence
      t.float :war
      t.timestamps
    end
  end
end
