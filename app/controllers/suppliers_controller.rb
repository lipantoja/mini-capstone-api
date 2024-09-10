class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    # render template: "suppliers/index" (same as line below)
    render :index
  end
end