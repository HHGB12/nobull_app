class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.references :user, foreign_key: true
      t.string :business_name
      t.boolean :has_current_website
      t.string :current_website_link

      t.timestamps
    end
    add_index :websites, :business_name
    add_index :websites, :current_website_link
  end
end
