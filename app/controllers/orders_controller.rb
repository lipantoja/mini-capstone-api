class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render :show
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    # do calculations to calculate subttoal tax total
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user_id,
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    render :show
    @order.save
  end
end
