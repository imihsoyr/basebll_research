class Batting < ActiveRecord::Base
  belongs_to :player, primary_key: 'batter_id', foreign_key: 'player_id'
end
