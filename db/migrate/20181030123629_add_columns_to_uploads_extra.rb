class AddColumnsToUploadsExtra < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads_extras, :is_complete, :boolean, default: false, null: false
    add_index :uploads_extras, :is_complete
  end
end
