class CartedProductsController < ApplicationController
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
