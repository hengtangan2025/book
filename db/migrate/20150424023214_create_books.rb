class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :author
      t.text :keyword
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
