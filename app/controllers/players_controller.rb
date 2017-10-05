class PlayersController < ApplicationController

  # before_action :authenticate_user!, only: :show

  def show
    @player = Batting.find(params[:id])
  end
end
