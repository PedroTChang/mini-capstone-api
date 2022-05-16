class OrdersController < ApplicationController
  def show
    render json: { message: "successs" }
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
    )
    if current_user
      order.save
      render json: { message: "Order created." }
    else
      render json: { message: "You must be logged in to create an order" }
    end
  end
end
