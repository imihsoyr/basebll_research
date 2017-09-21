class RemovePlayerFromDashboard < ActiveRecord::Migration
  def change
    remove_column :dashboards, :player, :string
  end
end
