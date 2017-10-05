class Pitching < ActiveRecord::Base
  has_one :player, primary_key: 'pitcher_id', foreign_key: 'player_id'
end
