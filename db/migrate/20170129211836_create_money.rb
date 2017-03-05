class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
      t.decimal :value, precision: 8, scale: 2, null: false
      t.belongs_to :user, index: true, null: false
      t.boolean :expense, null: false

      t.timestamps
    end
  end
end
