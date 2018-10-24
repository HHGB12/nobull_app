class CreateIntegrations < ActiveRecord::Migration[5.2]
  def change
    create_table :integrations do |t|
      t.references :user, foreign_key: true
      t.string :facebook_page_link
      t.boolean :update_facebook_profile
      t.string :goolge_business_link
      t.boolean :update_google_business
      t.string :twitter_profile_link
      t.boolean :update_twitter_profile
      t.string :twitter_username
      t.string :twitter_password
      t.string :linkedin_page_link
      t.boolean :update_linkedin_page
      t.string :yelp_page_link
      t.boolean :update_yelp_page
      t.string :yelp_email_address
      t.string :yelp_password

      t.timestamps
    end
  end
end
