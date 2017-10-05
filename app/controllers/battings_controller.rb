class BattingsController < ApplicationController

 before_action :authenticate_user!

  def index
    @battings = Batting.all.order('batting_avg DESC,plate_appe DESC')

  end


end