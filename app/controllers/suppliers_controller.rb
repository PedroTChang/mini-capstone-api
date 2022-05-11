class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render template: "suppliers/show"
  end

  def create
    supplier = Supplier.new(
      name: params["name"],
      email: params[email:],
      phone_number: params[phone_number:],
      # price: params["price"],
      # description: params["description"],
      # image_url: params["image_url"],
    )
    @supplier = supplier
    if supplier.save
      render template: "suppliers/show"
    else
      render json: { message: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    supplier.name = params["name"] || supplier.name
    supplier.email = params[email:] || supplier.email
    supplier.phone_number = params[phone_number:] || supplier.phone_number
    # supplier.price = params["price"] || supplier.price
    # supplier.description = params["description"] || supplier.description
    # supplier.image_url = params["image_url"] || supplier.image_url
    # @supplier = supplier
    if supplier.save
      render template: "suppliers/show"
    else
      render json: { message: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    supplier.destroy
    render json: { message: "Supplier DELETED." }
  end
end
