class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "recipes/index"
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
end
