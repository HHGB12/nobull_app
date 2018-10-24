class CreateWebsiteContents < ActiveRecord::Migration[5.2]
  def change
    create_table :website_contents do |t|
      t.references :user, foreign_key: true
      t.string :founder
      t.string :founded
      t.text :about_us
      t.text :background_story
      t.text :team
      t.text :services
      t.text :pricing
      t.text :message_from_founder
      t.text :other_info

      t.timestamps
    end
    add_index :website_contents, :founder
    add_index :website_contents, :founded
  end
end
