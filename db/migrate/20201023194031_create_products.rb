class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :bought_quantity
      t.string :description
      t.string :image_link
      t.boolean :on_sale
      t.integer :price
      t.string :product_type
      t.integer :quantity
      t.integer :sale_percentage

      t.timestamps
    end
  end
end
