class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about_contents_complete, :boolean, null: false, default: false
    add_index :users, :about_contents_complete
    add_column :users, :business_details_complete, :boolean, null: false, default: false
    add_index :users, :business_details_complete
    add_column :users, :integrations_complete, :boolean, null: false, default: false
    add_index :users, :integrations_complete
    add_column :users, :services_contents_complete, :boolean, null: false, default: false
    add_index :users, :services_contents_complete
  end
end
