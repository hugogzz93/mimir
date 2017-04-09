class CreateBodyStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :body_statistics do |t|
    	t.float :fat_percentage
    	t.float :water_percentage
    	t.float :muscle_percentage
    	t.float :bones_percentage
      t.belongs_to :user, null: false

    	t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
