class Player < ActiveRecord::Base
  has_many :battings, primary_key: 'player_id', foreign_key: 'batter_id'
  has_many :pitchings, primary_key: 'player_id', foreign_key: 'pitcher_id'
end