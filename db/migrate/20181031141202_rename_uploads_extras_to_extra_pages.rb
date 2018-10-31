class RenameUploadsExtrasToExtraPages < ActiveRecord::Migration[5.2]
  def change
    rename_table :uploads_extras, :extra_pages
  end
end
