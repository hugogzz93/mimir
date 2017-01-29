class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
