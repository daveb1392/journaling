class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :api_id
      t.string :event_url

      t.timestamps
    end
  end
end
