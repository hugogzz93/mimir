class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.integer :value
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
