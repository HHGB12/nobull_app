class ChangeDefaultExtraPagesIsComplete < ActiveRecord::Migration[5.2]
  def change
    change_column_default :extra_pages, :is_complete, default: true 
  end
end
