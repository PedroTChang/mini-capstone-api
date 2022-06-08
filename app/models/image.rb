class Image < ApplicationRecord
  # validates :image_url, format: { with: %r{\.(gif|jpg|png)\Z}i }
  belongs_to :product


  # def product
  #   Product.find_by(id: product_id)
  # end
end
