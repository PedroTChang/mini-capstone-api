class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    
    # if params[:category]
    #   category = Category.find_by(name: params[:category])
    #   @products = category.products
    # end

    # if params[:search]
    #   @products = @products.where("name ILIKE ?", "%#{params[:search]}")
    # end

    # if params[:discount]
    #   @products = @products.where("price < ?", 1500)
    # end

    # if params[:sort] == "price"
    #   if params[:sort_order] == "desc"
    #     @products = @products.order(:price => :desc)
    #   else
    #     @products = @products.order(:price => :asc)
    #   end
    # else
    #   @products = @products.order(:id => :asc)
    # end



    render template: "products/index"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      quantity: params[:quantity]
    )
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product has been deleted." }
  end
end