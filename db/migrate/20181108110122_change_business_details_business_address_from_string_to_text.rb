class ChangeBusinessDetailsBusinessAddressFromStringToText < ActiveRecord::Migration[5.2]
  def up
    change_column :business_details, :business_address, :text
    change_column :business_details, :mailing_address, :text
  end

  def down
      change_column :business_details, :business_address, :string
      change_column :business_details, :mailing_address, :string
  end
end
