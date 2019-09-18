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






     @range = Date.today.beginning_of_day..Date.today.end_of_day
     
     @food4 = Income.where(name: "食費").where(created_at: @range).where(user_id: current_user.id)
     @food7 = 0
     
     @food4.each do |income_sum|
      if @food4 
       @food7 += income_sum.value.to_i
       @food5 = @food7
       @food6 = "円"
       @foodname1 = income_sum.name 
      end
     end
 
     @dailynecessities4 = Income.where(name: "日用品").where(created_at: @range).where(user_id: current_user.id)
     @dailynecessities7 = 0
     
     @dailynecessities4.each do |income_sum|
      if @dailynecessities4 
       @dailynecessities7 += income_sum.value.to_i
       @dailynecessities5 = @dailynecessities7
       @dailynecessities6 = "円"
       @dailynecessitiesname1 = income_sum.name 
      end
     end
 
     @tex4 = Income.where(name: "交通費").where(created_at: @range).where(user_id: current_user.id)
     @tex7 = 0
     
     @tex4.each do |income_sum|
      if @tex4 
       @tex7 += income_sum.value.to_i
       @tex5 = @tex7
       @tex6 = "円"
       @texname1 = income_sum.name
      end
     end
 
     @book4 = Income.where(name: "本・雑誌").where(created_at: @range).where(user_id: current_user.id)
     @book7 = 0
     
     @book4.each do |income_sum|
      if @tex4 
       @book7 += income_sum.value.to_i
       @book5 = @book7
       @book6 = "円"
       @bookname1 = income_sum.name 
      end
     end
 
     @cell4 = Income.where(name: "携帯電話").where(created_at: @range).where(user_id: current_user.id)
     @cell7 = 0
     
     @cell4.each do |income_sum|
      if @cell4 
       @cell7 += income_sum.value.to_i
       @cell5 = @cell7
       @cell6 = "円"
       @cellname1 = income_sum.name 
      end
     end
 
     @internet4 = Income.where(name: "インターネット").where(created_at: @range).where(user_id: current_user.id)
     @internet7 = 0
     
     @internet4.each do |income_sum|
      if @internet4 
       @internet7 += income_sum.value.to_i
       @internet5 = @internet7
       @internet6 = "円"
       @internetname1 = income_sum.name 
      end
     end
 
     @Medical4 = Income.where(name: "医療費").where(created_at: @range).where(user_id: current_user.id)
     @Medical7 = 0
     
     @Medical4.each do |income_sum|
      if @Medical4 
       @Medical7 += income_sum.value.to_i
       @Medical5 = @Medical7 
       @Medical6 = "円"
       @Medicalname1 = income_sum.name 
      end
     end
 
     @water4 = Income.where(name: "水道代").where(created_at: @range).where(user_id: current_user.id)
     @water7 = 0
     
     @water4.each do |income_sum|
      if @water4 
       @water7 += income_sum.value.to_i
       @water5 = @water7
       @water6 = "円"
       @watername1 = income_sum.name
      end
     end
 
     @gas4 = Income.where(name: "ガス代").where(created_at: @range).where(user_id: current_user.id)
     @gas7 = 0
     
     @gas4.each do |income_sum|
      if @gas4 
       @gas7 += income_sum.value.to_i
       @gas5 = @gas7
       @gas6 = "円"
       @gasname1 = income_sum.name 
      end
     end
 
     @Electrical4 = Income.where(name: "電気代").where(created_at: @range).where(user_id: current_user.id)
     @Electrical7 = 0
     
     @Electrical4.each do |income_sum|
      if @Electrical4 
       @Electrical7 += income_sum.value.to_i
       @Electrical5 = @Electrical7
       @Electrical6 = "円"
       @Electricalname1 = income_sum.name 
      end
     end
 
     @rent4 = Income.where(name: "家賃").where(created_at: @range).where(user_id: current_user.id)
     @rent7 = 0
     
     @rent4.each do |income_sum|
      if @rent4 
       @rent7 += income_sum.value.to_i
       @rent5 = @rent7
       @rent6 = "円"
       @rentname1 = income_sum.name 
      end
     end
 
     @clothing4 = Income.where(name: "衣類").where(created_at: @range).where(user_id: current_user.id)
     @clothing7 = 0
     
     @clothing4.each do |income_sum|
      if @clothing4 
       @clothing7 += income_sum.value.to_i
       @clothing5 = @clothing7 
       @clothing6 = "円"
       @clothingname1 = income_sum.name 
      end
     end


     @hair4 = Income.where(name: "美容院").where(created_at: @range).where(user_id: current_user.id)
     @hair7 = 0
     
     @hair4.each do |income_sum|
      if @hair4 
       @hair7 += income_sum.value.to_i
       @hair5 = @hair7 
       @hair6 = "円"
       @hairname1 = income_sum.name 
      end
     end
 
     @Entertainment4 = Income.where(name: "娯楽費").where(created_at: @range).where(user_id: current_user.id)
     @Entertainment7 = 0
     
     @Entertainment4.each do |income_sum|
      if @Entertainment4 
       @Entertainment7 += income_sum.value.to_i
       @Entertainment5 = @Entertainment7
       @Entertainment6 = "円"
       @Entertainmentname1 = income_sum.name 
      end
     end
 
     @insurance4 = Income.where(name: "保険").where(created_at: @range).where(user_id: current_user.id)
     @insurance7 = 0
     
     @insurance4.each do |income_sum|
      if @insurance4 
       @insurance7 += income_sum.value.to_i
       @insurance5 = @insurance7
       @insurance6 = "円"
       @insurancename1 = income_sum.name 
      end
     end
 
     @card4 = Income.where(name: "カード払い").where(created_at: @range).where(user_id: current_user.id)
     @card7 = 0
     
     @card4.each do |income_sum|
      if @card4 
       @card7 += income_sum.value.to_i
       @card5 = @card7
       @card6 = "円"
       @cardname1 = income_sum.name 
      end
     end
 
     @other4 = Income.where(name: "その他").where(created_at: @range).where(user_id: current_user.id)
     @other7 = 0
     
     @other4.each do |income_sum|
      if @other4 
       @other7 += income_sum.value.to_i
       @other5 = @other7
       @other6 = "円"
       @othername1 = income_sum.name 
      end
     end

   end
 end
 
 