class RemoveWhichMeditationFromJournal < ActiveRecord::Migration[5.2]
  def change
    remove_column :journals, :which_meditation, :string
  end
end
