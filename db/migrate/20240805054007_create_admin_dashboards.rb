class CreateAdminDashboards < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_dashboards do |t|

      t.timestamps
    end
  end
end
