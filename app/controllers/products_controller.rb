class ProductsController < ApplicationController
  def index
    @products = Product.all
    # render template: "products/index"
    render :index
  end
  def create
    p params[:name]
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
    )
    @product.save
    render template: "products/show"
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:title]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.image_url = params[:image_url]
    @product.save
    render template: "products/show"

  end
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product has been removed."}
  end
end
