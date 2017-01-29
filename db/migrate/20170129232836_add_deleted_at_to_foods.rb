class AddDeletedAtToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :deleted_at, :datetime
    add_index :foods, :deleted_at
  end
end
