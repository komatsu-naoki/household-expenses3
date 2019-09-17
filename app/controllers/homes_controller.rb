class HomesController < ApplicationController

  def index
   
   @range = Date.today.beginning_of_day..Date.today.end_of_day
     
     @food0 = Spending.where(name: "食費").where(created_at: @range).where(user_id: current_user.id)
     @food3 = 0
     
     @food0.each do |spending_sum|
      if @food0 
       @food3 += spending_sum.value.to_i
       @food1 = @food3
       @food2 = "円"
       @foodname = spending_sum.name 
      end
     end
 
     @dailynecessities0 = Spending.where(name: "日用品").where(created_at: @range).where(user_id: current_user.id)
     @dailynecessities3 = 0
     
     @dailynecessities0.each do |spending_sum|
      if @dailynecessities0 
       @dailynecessities3 += spending_sum.value.to_i
       @dailynecessities1 = @dailynecessities3
       @dailynecessities2 = "円"
       @dailynecessitiesname = spending_sum.name 
      end
     end
 
     @tex0 = Spending.where(name: "交通費").where(created_at: @range).where(user_id: current_user.id)
     @tex3 = 0
     
     @tex0.each do |spending_sum|
      if @tex0 
       @tex3 += spending_sum.value.to_i
       @tex1 = @tex3
       @tex2 = "円"
       @texname = spending_sum.name 
      end
     end
 
     @book0 = Spending.where(name: "本・雑誌").where(created_at: @range).where(user_id: current_user.id)
     @book3 = 0
     
     @book0.each do |spending_sum|
      if @tex0 
       @book3 += spending_sum.value.to_i
       @book1 = @book3
       @book2 = "円"
       @bookname = spending_sum.name 
      end
     end
 
     @cell0 = Spending.where(name: "携帯電話").where(created_at: @range).where(user_id: current_user.id)
     @cell3 = 0
     
     @cell0.each do |spending_sum|
      if @cell0 
       @cell3 += spending_sum.value.to_i
       @cell1 = @cell3
       @cell2 = "円"
       @cellname = spending_sum.name 
      end
     end
 
     @internet0 = Spending.where(name: "インターネット").where(created_at: @range).where(user_id: current_user.id)
     @internet3 = 0
     
     @internet0.each do |spending_sum|
      if @internet0 
       @internet3 += spending_sum.value.to_i
       @internet1 = @internet3
       @internet2 = "円"
       @internetname = spending_sum.name 
      end
     end
 
     @Medical0 = Spending.where(name: "医療費").where(created_at: @range).where(user_id: current_user.id)
     @Medical3 = 0
     
     @Medical0.each do |spending_sum|
      if @Medical0 
       @Medical3 += spending_sum.value.to_i
       @Medical1 = @Medical3 
       @Medical2 = "円"
       @Medicalname = spending_sum.name 
      end
     end
 
     @water0 = Spending.where(name: "水道代").where(created_at: @range).where(user_id: current_user.id)
     @water3 = 0
     
     @water0.each do |spending_sum|
      if @water0 
       @water3 += spending_sum.value.to_i
       @water1 = @water3
       @water2 = "円"
       @watername = spending_sum.name
      end
     end
 
     @gas0 = Spending.where(name: "ガス代").where(created_at: @range).where(user_id: current_user.id)
     @gas3 = 0
     
     @gas0.each do |spending_sum|
      if @gas0 
       @gas3 += spending_sum.value.to_i
       @gas1 = @gas3
       @gas2 = "円"
       @gasname = spending_sum.name 
      end
     end
 
     @Electrical0 = Spending.where(name: "電気代").where(created_at: @range).where(user_id: current_user.id)
     @Electrical3 = 0
     
     @Electrical0.each do |spending_sum|
      if @Electrical0 
       @Electrical3 += spending_sum.value.to_i
       @Electrical1 = @Electrical3
       @Electrical2 = "円"
       @Electricalname = spending_sum.name 
      end
     end
 
     @rent0 = Spending.where(name: "家賃").where(created_at: @range).where(user_id: current_user.id)
     @rent3 = 0
     
     @rent0.each do |spending_sum|
      if @rent0 
       @rent3 += spending_sum.value.to_i
       @rent1 = @rent3
       @rent2 = "円"
       @rentname = spending_sum.name 
      end
     end
 
     @clothing0 = Spending.where(name: "衣類").where(created_at: @range).where(user_id: current_user.id)
     @clothing3 = 0
     
     @clothing0.each do |spending_sum|
      if @clothing0 
       @clothing3 += spending_sum.value.to_i
       @clothing1 = @clothing3 
       @clothing2 = "円"
       @clothingname = spending_sum.name 
      end
     end


     @hair0 = Spending.where(name: "美容院").where(created_at: @range).where(user_id: current_user.id)
     @hair3 = 0
     
     @hair0.each do |spending_sum|
      if @hair0 
       @hair3 += spending_sum.value.to_i
       @hair1 = @hair3 
       @hair2 = "円"
       @hairname = spending_sum.name 
      end
     end
 
     @Entertainment0 = Spending.where(name: "娯楽費").where(created_at: @range).where(user_id: current_user.id)
     @Entertainment3 = 0
     
     @Entertainment0.each do |spending_sum|
      if @Entertainment0 
       @Entertainment3 += spending_sum.value.to_i
       @Entertainment1 = @Entertainment3
       @Entertainment2 = "円"
       @Entertainmentname = spending_sum.name 
      end
     end
 
     @insurance0 = Spending.where(name: "保険").where(created_at: @range).where(user_id: current_user.id)
     @insurance3 = 0
     
     @insurance0.each do |spending_sum|
      if @insurance0 
       @insurance3 += spending_sum.value.to_i
       @insurance1 = @insurance3
       @insurance2 = "円"
       @insurancename = spending_sum.name 
      end
     end
 
     @card0 = Spending.where(name: "カード払い").where(created_at: @range).where(user_id: current_user.id)
     @card3 = 0
     
     @card0.each do |spending_sum|
      if @card0 
       @card3 += spending_sum.value.to_i
       @card1 = @card3
       @card2 = "円"
       @cardname = spending_sum.name 
      end
     end
 
     @other0 = Spending.where(name: "その他").where(created_at: @range).where(user_id: current_user.id)
     @other3 = 0
     
     @other0.each do |spending_sum|
      if @other0 
       @other3 += spending_sum.value.to_i
       @other1 = @other3
       @other2 = "円"
       @othername = spending_sum.name 
      end
     end
   end
 end
 
 