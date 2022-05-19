class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    pp current_user
    @products = Product.all
    render template: "products/index"
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      image_url: params["image_url"],
    )
    @product = product
    if product.save
      render template: "products/show"
    else
      render json: { message: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    product.image_url = params["image_url"] || product.image_url
    @product = product
    if product.save
      render template: "products/show"
    else
      render json: { message: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product DELETED." }
  end
end
