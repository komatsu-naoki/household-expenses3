class HomesController < ApplicationController

 def index
  current_user.spendings.each do |spending|
    if spending.name == "食費" && Date.today <= spending.created_at && spending.created_at < Date.today + 1 
    @range = Date.today.beginning_of_day..Date.today.end_of_day
    @date = Spending.where(created_at: @range)
    @sum1 = 0
    @date.each do |spending_sum|
    @sum1 += spending_sum.value.to_i
    @sum2 = "円"
    end
  end
end

    current_user.spendings.each do |spending|
    if spending.name == "食費" && Date.today <= spending.created_at && spending.created_at < Date.today + 1 
      @name = spending.name 
    end
  end
 end
end

