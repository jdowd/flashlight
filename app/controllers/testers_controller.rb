class TestersController < ApplicationController
  def index
    @testers = Tester.all
  end

  def new
    @tester = Tester.new
  end
  
  def create
    # raise 'b'
    @tester = Tester.create(params["tester"])
    redirect_to :action => 'index'
  end

  def edit
  end

end
