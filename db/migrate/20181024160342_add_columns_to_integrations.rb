class AddColumnsToIntegrations < ActiveRecord::Migration[5.2]
  def change
    add_column :integrations, :is_complete, :boolean, null: false, default: false
    add_column :business_details, :is_complete, :boolean, null: false, default: false
    add_column :about_contents, :is_complete, :boolean, null: false, default: false
    add_column :services_contents, :is_complete, :boolean, null: false, default: false
  end
end
