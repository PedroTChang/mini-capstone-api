class AddSupplierIDtoProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplier_id, :integer
  end
end
