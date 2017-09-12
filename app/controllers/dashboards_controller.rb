class DashboardsController < ApplicationController
  def index
    @dashboards = Dashboard.all.order('war DESC')
  end
end
