class AddDeletedAtToMoney < ActiveRecord::Migration[5.0]
  def change
    add_column :money, :deleted_at, :datetime
    add_index :money, :deleted_at
  end
end
