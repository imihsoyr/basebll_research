class CreatePitchings < ActiveRecord::Migration
  def change
    create_table :pitchings do |t|
      t.integer :year
      t.string :team_name
      t.string :pit_name
      t.integer :age
      t.integer :wins
      t.integer :lossses
      t.float :win_loss_perc
      t.float :earned_run_avg
      t.integer :games
      t.integer :games_started
      t.integer :games_finished
      t.integer :conplete_game
      t.integer :shutouts
      t.integer :saves
      t.integer :innings_pitched
      t.integer :hits
      t.integer :runs
      t.integer :earned_runs
      t.integer :homeruns
      t.integer :walks
      t.integer :intentional_bb
      t.integer :strikeouts
      t.integer :hit_by_pitch
      t.integer :balks
      t.integer :wild_pitches
      t.integer :batters_faced
      t.float :whip
      t.float :hits_per_nine
      t.float :homeruns_per_nine
      t.float :walks_per_nine
      t.float :strikeouts_per_nine
      t.float :strikeouts_per_walks
      t.string :notes
      t.timestamps
    end
  end
end
