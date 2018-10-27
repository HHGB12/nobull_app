class RemoveColumnFromIntegrations < ActiveRecord::Migration[5.2]
  def change
    remove_column :integrations, :twitter_profile_link, :string
  end
end
