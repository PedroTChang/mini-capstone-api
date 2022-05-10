class Product < ApplicationRecord
  def dollar_price
    return "$#{price}"
  end

  def friendly_created
    return created_at.strftime("%e %b %Y %H:%M:%S%Z")
  end

  def friendly_updated
    return updated_at.strftime("%e %b %Y %H:%M:%S%Z")
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
end
