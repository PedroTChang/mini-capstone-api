class AddInventorytoProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :quantity, :integer, precision: 9, scale: 0
  end
end
