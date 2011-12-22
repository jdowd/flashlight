class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    # raise 'b'
    Category.create(params["category"])
    redirect_to :action => 'index'
  end

  def edit
    @category = Category.find(params['id'])
  end
  
  def update
    # raise 'b'
    @category = Category.find(params['id'])
    @category.update_attributes(params['category'])
    redirect_to :action => 'index'
  end

end
