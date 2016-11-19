class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.text :details

      t.timestamps null: false
    end
  end
end
