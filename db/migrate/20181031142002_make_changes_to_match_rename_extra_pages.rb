class MakeChangesToMatchRenameExtraPages < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :uploads_extras_complete, :extra_pages_complete 
  end
end
