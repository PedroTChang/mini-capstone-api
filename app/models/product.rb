class Product < ApplicationRecord
  validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :name, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0 }
  belongs_to :supplier
  has_many :images
  has_many :orders

  def dollar_price
    return "$#{price}"
  end

  def friendly_created
    return created_at.strftime("%A, %b %d")
  end

  def friendly_updated
    return updated_at.strftime("%A, %b %d")
  end

  def tax
    (price * 0.0975).round(2)
  end

  def is_discounted?
    price < 10
  end

  def total
    (price + tax).round(2)
  end

  def total_in_dollar
    "$#{total.round(2)}"
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end
