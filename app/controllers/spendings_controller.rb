class SpendingsController < ApplicationController

  def index
    @spendings = Spending.new
  end

  def new
    @spendings = Spendings.new
  end

end
