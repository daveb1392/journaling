class RemoveCreatedAtFromMeditations < ActiveRecord::Migration[5.2]
  def change
    remove_column :meditations, :created_at, :datetime
  end
end
