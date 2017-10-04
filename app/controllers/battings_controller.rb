class BattingsController < ApplicationController

 before_action :authenticate_user!

  def index
    @battings = Batting.where(year: 2016).order('batting_avg DESC,plate_appe DESC')

  end


end