class CreateMeditations < ActiveRecord::Migration[5.2]
  def change
    create_table :meditations do |t|
      t.string :category
      t.string :author
      t.string :url
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
