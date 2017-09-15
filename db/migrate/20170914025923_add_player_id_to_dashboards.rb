class AddPlayerIdToDashboards < ActiveRecord::Migration
  def change
    add_column :dashboards, :player_id, :integer
  end
end
