class CreateCartedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_products do |t|
      t.integer :product_id
      t.integer :quantity
      t.integer :user_id
      t.integer :order_id
      t.string :status

      t.timestamps
    end
  end
end
