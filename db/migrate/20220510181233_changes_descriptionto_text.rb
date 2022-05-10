class ChangesDescriptiontoText < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :description, :text
  end
end
