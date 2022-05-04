class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def create
    product = Product.new(
      title: "JBC Pre-amp",
      price: 13452,
      image_url: "test",
      description: "A fancy pre-amp",
    )
    product.save
    rend json: product.as_json
  end
end
