class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "recipes/index"
  end
  def create
    @product = Product.new(
      name: "", 
      price: "turkey + mayo lettuce + brea", 
      description: "place all ingredients on top of each other", 
      image_url: "https://recipes.timesofindia.com/thumb/83740315.cms?width=1200&height=900",
    )
    @product.save
    render template: "products/show"
end
