class OrdersController < ApplicationController
  def create
    @orders = Order.create(
      user_id: params[:user_id],
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
  end
end
