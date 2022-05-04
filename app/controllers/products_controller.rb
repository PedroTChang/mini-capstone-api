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
      name: params["name"],
      price: params["price"],
      description: params["description"],
      image_url: params["image_url"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])

    product.name = params["name"]
    product.price = params["price"]
    product.description = params["description"]
    product.image_url = params["image_url"]

    product.save

    render json: product.as_json
  end
end
