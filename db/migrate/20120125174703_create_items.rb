class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :artist
      t.references :category
      t.boolean :isOwned
      t.string :productURL
      t.string :imageFile
      t.integer :rating

      t.timestamps
    end
    add_index :items, :category_id
  end
end
