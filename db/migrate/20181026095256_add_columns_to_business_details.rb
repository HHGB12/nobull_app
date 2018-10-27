class AddColumnsToBusinessDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :business_details, :city, :string
    add_column :business_details, :region, :string
    add_column :business_details, :postal_code, :string
  end
end
