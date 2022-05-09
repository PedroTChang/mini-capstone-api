class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:dollar_price, :tax, :friendly_created, :friendly_updated])
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
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    product.image_url = params["image_url"] || product.image_url
    product.save
    render json: product.as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product DELETED." }
  end
end
