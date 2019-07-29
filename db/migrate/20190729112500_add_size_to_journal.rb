class AddSizeToJournal < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :grateful, :string
    add_column :journals, :today_great, :string
    add_column :journals, :affirmation, :string
    add_column :journals, :good_deed, :string
    add_column :journals, :improve, :string
    add_column :journals, :experienced, :string
    add_column :journals, :meditate, :boolean
    add_column :journals, :which_meditation, :string
    add_column :journals, :how_was_day, :string
    add_column :journals, :string, :string
  end
end
