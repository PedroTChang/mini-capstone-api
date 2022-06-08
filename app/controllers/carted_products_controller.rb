#  class CartedProductsController < ApplicationController
#   def index
#     @carted_products = current_user.carted_products.where(status: "carted")
    
#     render template: "carted_products/index"
#   end

#   def create
#     @carted_product = CartedProduct.new(
#       user_id: current_user.id,
#       product_id: params[:product_id],
#       quantity: params[:quantity],
#       status: "carted",
#     )
#     @carted_product.save
#     render json: carted_product.as_json
#   end

#   def destroy
#     carted_product = current_user.CartedProduct.find_by(id: params[:id], status: "carted")
#     carted_product.status = "removed"
#     carted_product.save
#     render json: {message: "Carted Product has been successfully removed."}
#   end
# end
 
class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")

    render template: "carted_products/index"
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "Carted Product has been succesfully removed." }
  end
end