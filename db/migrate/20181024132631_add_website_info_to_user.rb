class AddWebsiteInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :business_name, :string
    add_index :users, :business_name
    add_column :users, :personal_phone_number, :string
    add_column :users, :has_current_website, :boolean
    add_index :users, :has_current_website
    add_column :users, :current_website, :string
    add_index :users, :current_website
  end
end
