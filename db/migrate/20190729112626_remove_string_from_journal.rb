class RemoveStringFromJournal < ActiveRecord::Migration[5.2]
  def change
    remove_column :journals, :string, :string
  end
end
