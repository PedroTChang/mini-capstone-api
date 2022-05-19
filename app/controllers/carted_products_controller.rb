class CartedProductsController < ApplicationController
  def index
    if current_user
      cart = CartedProduct.all
      render json: cart.as_json
    else
      render json: { message: carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    cart = CartedProduct.new(
      product_id: 1,
      quantity: 1,
      user_id: current_user.id,
      order_id: nil,
      status: "carted",
    )
    render json: cart.as_json
  end
end
