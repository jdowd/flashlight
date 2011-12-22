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
    @product = Product.find(params['id'])
  end
  
  def update
    # raise 'b'
    @product = Product.find(params['id'])
    @product.update_attributes(params['product'])
    redirect_to :action => 'index'
  end

end
