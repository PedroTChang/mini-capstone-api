class AddsTitleandSizetoImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :title, :string
    add_column :images, :size, :string
  end
end
