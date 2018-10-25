class AddProgressTrackerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_submitted, :boolean, null: false, default: false
    add_index :users, :is_submitted
  end
end
