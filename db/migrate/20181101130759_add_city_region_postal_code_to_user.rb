class AddCityRegionPostalCodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :city, :string, null: false, default: ''
    add_index :users, :city
    add_column :users, :region, :string, null: false, default: ''
    add_index :users, :region
    add_column :users, :postal_code, :string, null: false, default: ''
    add_index :users, :postal_code
  end
end
