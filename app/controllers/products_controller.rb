class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  
  def create
    # raise 'whatever'
    @product = Product.create(params["product"])
    redirect_to :action => 'index'
  end

  def index
    @products = Product.all
  end

  def edit
  end

end
