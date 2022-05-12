class AddImagestoProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :images, :text
  end
end
