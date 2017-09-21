class PlayersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def show
    @player = Player.find(params[:id])
  end
end
