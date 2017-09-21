class DashboardsController < ApplicationController

before_action :authenticate_user!, except: :index

  def index
    @dashboards = Dashboard.all.order('war DESC')
  end

end
