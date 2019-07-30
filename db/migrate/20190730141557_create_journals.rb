class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :grateful
      t.string :today_great
      t.string :affirmation
      t.string :good_deed
      t.string :improve
      t.string :experienced
      t.boolean :meditate
      t.string :which_meditation
      t.string :how_was_day
      t.integer :meditation_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
