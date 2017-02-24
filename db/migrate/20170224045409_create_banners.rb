class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
