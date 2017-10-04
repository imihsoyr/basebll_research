class CreateBattings < ActiveRecord::Migration
  def change
    create_table :battings do |t|
      t.integer :year
      t.string :team_name
      t.string :bat_name
      t.integer :age
      t.integer :games
      t.integer :plate_appe
      t.integer :at_bats
      t.integer :runs
      t.integer :hits
      t.integer :doubles
      t.integer :triples
      t.integer :homeruns
      t.integer :runs_batted_in
      t.integer :stolen_bases
      t.integer :caugth_steal
      t.integer :wallks
      t.integer :strikeouts
      t.float :batinng_avg
      t.float :onbase_perc
      t.float :slugging_perc
      t.float :onbase_plus_slugging
      t.integer :total_bases
      t.integer :grounded_double_plays
      t.integer :hit_by_pitch
      t.integer :sacrifice_hits
      t.integer :sacrifice_flies
      t.integer :intentional_bb
      t.string :notes
      t.timestamps
    end
  end
end
