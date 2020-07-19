class CreateProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
