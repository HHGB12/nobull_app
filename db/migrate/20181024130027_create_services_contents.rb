class CreateServicesContents < ActiveRecord::Migration[5.2]
  def change
    create_table :services_contents do |t|
      t.references :user, foreign_key: true
      t.text :services
      t.text :pricing
      t.text :other_info

      t.timestamps
    end
  end
end
