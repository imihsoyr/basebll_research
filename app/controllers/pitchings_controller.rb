class PitchingsController < ApplicationController
  # before_action :authenticate_user!, except: :index

  def index
    @pitchings = Pitching.all.order('earned_run_avg ASC')

  end
end
