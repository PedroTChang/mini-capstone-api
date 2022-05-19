class OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders
      render template: "orders/index"
    else
      render json: { message: order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    if current_user
      @order = Order.find_by(id: params[:id])
      render template: "orders/show"
    else
      render json: [], status: :unprocessable_entity
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.0975
    calculated_total = calculated_subtotal + calculated_tax

    if current_user && current_user.admin
      @order = Order.new(
        user_id: current_user.id,
        product_id: params["product_id"],
        quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )
      order.save
      render template: "orders/create"
    else
      render json: [], status: :unprocessable_entity
    end
  end
end
