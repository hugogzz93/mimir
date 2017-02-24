class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.datetime :date
      t.integer :status, null: false, default: 0
      t.text :description, null: false

      t.timestamps
    end
  end
end
