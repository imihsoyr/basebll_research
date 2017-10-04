class PlayersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def show
    @player = Player.find(params:[player_id])
  end
end
