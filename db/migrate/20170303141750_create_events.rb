class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.time :start_time
      t.time :end_time
      t.belongs_to :user

      t.timestamps
    end
  end
end
