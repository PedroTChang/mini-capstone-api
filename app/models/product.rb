class Product < ApplicationRecord
  def dollar_price
    return "$#{price}"
  end

  def friendly_created
    return created_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def friendly_updated
    return updated_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def tax
    price * 0.0975
  end

  def is_discounted?
    price < 10
  end

  def total
    price + tax
  end

  def total_in_dollar
    "$#{total}"
  end
end
