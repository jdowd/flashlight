class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end
  
  def create
    # raise "this doesn't matter"
    @manufacturer = Manufacturer.create(params["manufacturer"])
    redirect_to :action => 'index'
  end

  def edit
  end

end
