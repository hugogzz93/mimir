class CreateTagRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_relations do |t|
    	t.belongs_to  :tag, index: true
      t.references :taggable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
