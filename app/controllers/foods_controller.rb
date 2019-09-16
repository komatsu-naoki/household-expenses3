class FoodsController < ApplicationController

  def new
    @foods = Foods.new
  end

  
end
