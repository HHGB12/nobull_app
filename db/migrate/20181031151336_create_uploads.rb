class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.references :user, foreign_key: true
      t.boolean :is_complete

      t.timestamps
    end
    add_index :uploads, :is_complete
    add_column :users, :uploads_complete, :boolean, null: false, default: false
  end
end
