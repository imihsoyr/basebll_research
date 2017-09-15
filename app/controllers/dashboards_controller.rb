class DashboardsController < ApplicationController

before_action :authenticate_user!

  def index
    @dashboards = Dashboard.all.order('war DESC')
  end

end
