class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.references :user, foreign_key: true
      t.string :business_name
      t.boolean :has_current_site
      t.string :current_website
      t.string :business_address
      t.string :mailing_address
      t.string :physical_or_mailing
      t.string :business_phone
      t.string :business_phone2
      t.string :business_fax
      t.string :business_email_address
      t.string :founded
      t.string :founder
      t.text :about_us
      t.text :services
      t.text :pricing
      t.string :facebook_page_link
      t.string :goolge_business_link
      t.string :twitter_profile_link
      t.string :linkedin_link

      t.timestamps
    end
    add_index :websites, :business_name
    add_index :websites, :has_current_site
    add_index :websites, :current_website
    add_index :websites, :business_address
    add_index :websites, :mailing_address
    add_index :websites, :physical_or_mailing
    add_index :websites, :business_phone
    add_index :websites, :business_phone2
    add_index :websites, :business_fax
    add_index :websites, :business_email_address
  end
end
