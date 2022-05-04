class ProductsController < ApplicationController
  def product_all
    products = Product.all
    render json: product.as_json
  end
end
