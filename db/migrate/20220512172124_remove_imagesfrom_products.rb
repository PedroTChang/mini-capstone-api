class RemoveImagesfromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :images, :text
  end
end
