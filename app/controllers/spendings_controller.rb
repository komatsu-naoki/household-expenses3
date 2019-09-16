class SpendingsController < ApplicationController

  def index
    
  end

  def new
    @spending = Spending.new
  end

  def create
    
    @spending = Spending.new(spending_params)
    @spending.users << current_user

    if @spending.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def spending_params
    params.require(:spending).permit(:name, :value).merge(user_id: current_user.id)
  end

end
