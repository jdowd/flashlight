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
    @tester = Tester.find(params['id'])
  end
  
  def update
    # raise 'b'
    @tester = Tester.find(params['id'])
    @tester.update_attributes(params['tester'])
    redirect_to :action => 'index'
  end

end
