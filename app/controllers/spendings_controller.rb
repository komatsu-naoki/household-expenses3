class SpendingsController < ApplicationController

  def index
    @spending = Spending.new
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

  def show
    
    
  end


  private

  def spending_params
    params.require(:spending).permit(:name, :value, :date).merge(user_id: current_user.id)
  end

end
