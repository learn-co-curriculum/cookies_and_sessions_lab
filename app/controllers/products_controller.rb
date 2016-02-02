class ProductsController < ApplicationController
  def index
    cart
  end

  def add
    cart << params[:product]
    render :index
  end
end
