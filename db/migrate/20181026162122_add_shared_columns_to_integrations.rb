class AddSharedColumnsToIntegrations < ActiveRecord::Migration[5.2]
  def change
    add_column :integrations, :shared_google_access, :boolean
    add_column :integrations, :shared_yelp_access, :boolean
    add_column :integrations, :shared_facebook_access, :boolean
    add_column :integrations, :shared_linkedin_access, :boolean
  end
end


