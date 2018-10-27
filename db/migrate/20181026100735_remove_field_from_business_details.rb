class RemoveFieldFromBusinessDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :business_details, :physical_or_mailing, :string
  end
end
