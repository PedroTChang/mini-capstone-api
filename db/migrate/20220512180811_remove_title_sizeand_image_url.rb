class RemoveTitleSizeandImageUrl < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :image_url, :string
    remove_column :images, :title, :string
    remove_column :images, :size, :string
  end
end
