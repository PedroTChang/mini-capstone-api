class OrdersController < ApplicationController
  def index
    # if current_user
    #   @orders = current_user.orders
    #   render template: "orders/index"
    # else
    #   render json: { message: order.errors.full_messages }, status: :unprocessable_entity
    # end
    @orders = current_user.orders
    render template: "orders/index"
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
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    
    carted_products.each do |carted_product|
      product = carted_product.product
      quantity = carted_product.quantity
      calculated_subtotal += product.price * quantity
      calculated_tax += product.tax * quantity
    end
    
    calculated_total = calculated_subtotal + calculated_tax
    
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    
    order.save
    
    carted_products.update_all(status: "purchased", order_id: order.id)
    
    render json: order.as_json
  end
end

#   def create
#     product = Product.find_by(id: params["product_id"])

#     calculated_subtotal = product.price * params[:quantity].to_i
#     calculated_tax = calculated_subtotal * 0.0975
#     calculated_total = calculated_subtotal + calculated_tax

#     if current_user && current_user.admin
#       cart = CartedProduct.find_by(id: params[:current_user])
#       @order = Order.new(
#         user_id: current_user.id,
#         subtotal: calculated_subtotal,
#         tax: calculated_tax,
#         total: calculated_total,
#       )
#       order.save
#       render template: "orders/create"
#     else
#       render json: { errors: @order.error.full_messages }, status: :unprocessable_entity
#     end
#   end
# end