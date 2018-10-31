class AddUploadsCompleteToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uploads_extras_complete, :boolean, null: false, default: false
    add_index :users, :uploads_extras_complete
  end
end
