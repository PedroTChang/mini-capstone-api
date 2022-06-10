class ImagesController < ApplicationController
  def index
    @images = Images.where(product_id :id)
    render template: images/index
  end

  def show
    @image = Image.find_by(product_id :id)
    render json:
  end

  def create
    @image = Image
  end
end
