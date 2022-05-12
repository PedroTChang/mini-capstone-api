class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :url
      t.string :product_id

      t.timestamps
    end
  end
end
