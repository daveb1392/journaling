class RemoveBodyFromJournal < ActiveRecord::Migration[5.2]
  def change
    remove_column :journals, :body, :string
  end
end


