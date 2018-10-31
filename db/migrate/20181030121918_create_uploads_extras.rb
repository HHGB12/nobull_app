class CreateUploadsExtras < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads_extras do |t|
      t.references :user, foreign_key: true
      t.integer :extra_pages
      t.text :extra_page1
      t.text :extra_page2
      t.text :extra_page3
      t.text :extra_page4
      t.text :extra_page5
      t.text :extra_page6

      t.timestamps
    end
  end
end
