class AddDeletedAtToWeights < ActiveRecord::Migration[5.0]
  def change
    add_column :weights, :deleted_at, :datetime
    add_index :weights, :deleted_at
  end
end
