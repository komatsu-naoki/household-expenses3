class HomesController < ApplicationController

 def index
  
  @range = Date.today.beginning_of_day..Date.today.end_of_day
    
    @food0 = Spending.where(name: "食費").where(created_at: @range)
    @food1 = 0
    
    @food0.each do |spending_sum|
     if @food0 
      @food1 += spending_sum.value.to_i
      @food2 = "円"
      @foodname = spending_sum.name 
     end
    end

    @dailynecessities0 = Spending.where(name: "日用品").where(created_at: @range)
    @dailynecessities1 = 0
    
    @dailynecessities0.each do |spending_sum|
     if @dailynecessities0 
      @dailynecessities1 += spending_sum.value.to_i
      @dailynecessities2 = "円"
      @dailynecessitiesname = spending_sum.name 
     end
    end

    @tex0 = Spending.where(name: "交通費").where(created_at: @range)
    @tex1 = 0
    
    @tex0.each do |spending_sum|
     if @tex0 
      @tex1 += spending_sum.value.to_i
      @tex2 = "円"
      @texname = spending_sum.name 
     end
    end



  end
end

