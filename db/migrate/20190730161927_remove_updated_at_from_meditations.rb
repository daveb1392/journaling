class RemoveUpdatedAtFromMeditations < ActiveRecord::Migration[5.2]
  def change
    remove_column :meditations, :updated_at, :datetime
  end
end
