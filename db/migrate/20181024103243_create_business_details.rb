class CreateBusinessDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :business_details do |t|
      t.references :user, foreign_key: true
      t.string :business_address
      t.string :mailing_address
      t.string :physical_or_mailing
      t.text :other_address_info
      t.string :business_phone
      t.string :business_phone2
      t.string :business_phone3
      t.string :business_fax
      t.text :business_phone_info
      t.string :business_email_address
      t.string :business_email_address2

      t.timestamps
    end
    add_index :business_details, :business_address
    add_index :business_details, :mailing_address
    add_index :business_details, :physical_or_mailing
    add_index :business_details, :business_phone
    add_index :business_details, :business_email_address
  end
end
