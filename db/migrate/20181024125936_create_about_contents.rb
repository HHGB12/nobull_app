class CreateAboutContents < ActiveRecord::Migration[5.2]
  def change
    create_table :about_contents do |t|
      t.references :user, foreign_key: true
      t.string :founder
      t.string :founded
      t.text :about_us
      t.text :background_story
      t.text :team
      t.text :message_from_founder
      t.text :other_info

      t.timestamps
    end
    add_index :about_contents, :founder
    add_index :about_contents, :founded
  end
end
