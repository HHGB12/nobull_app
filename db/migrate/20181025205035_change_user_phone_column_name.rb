class ChangeUserPhoneColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :personal_phone_number, :direct_phone_number
  end
end
