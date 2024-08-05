class CreateClientDashboards < ActiveRecord::Migration[7.1]
  def change
    create_table :client_dashboards do |t|

      t.timestamps
    end
  end
end
