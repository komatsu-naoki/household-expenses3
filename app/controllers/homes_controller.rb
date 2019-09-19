class HomesController < ApplicationController

  def index
  #  支出の機能
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





    #  収入の機能
    @range = Date.today.beginning_of_day..Date.today.end_of_day
     
    @food4 = Income.where(name: "食費").where(user_id: current_user.id)
    @food7 = 0
    
    @food4.each do |income_sum|
     if @food4 
      @food7 += income_sum.value.to_i
      @food5 = @food7
      @food6 = "円"
      @foodname1 = income_sum.name 
     end
    end

    @dailynecessities4 = Income.where(name: "日用品").where(user_id: current_user.id)
    @dailynecessities7 = 0
    
    @dailynecessities4.each do |income_sum|
     if @dailynecessities4 
      @dailynecessities7 += income_sum.value.to_i
      @dailynecessities5 = @dailynecessities7
      @dailynecessities6 = "円"
      @dailynecessitiesname1 = income_sum.name 
     end
    end

    @tex4 = Income.where(name: "交通費").where(user_id: current_user.id)
    @tex7 = 0
    
    @tex4.each do |income_sum|
     if @tex4 
      @tex7 += income_sum.value.to_i
      @tex5 = @tex7
      @tex6 = "円"
      @texname1 = income_sum.name
     end
    end

    @book4 = Income.where(name: "本・雑誌").where(user_id: current_user.id)
    @book7 = 0
    
    @book4.each do |income_sum|
     if @tex4 
      @book7 += income_sum.value.to_i
      @book5 = @book7
      @book6 = "円"
      @bookname1 = income_sum.name 
     end
    end

    @cell4 = Income.where(name: "携帯電話").where(user_id: current_user.id)
    @cell7 = 0
    
    @cell4.each do |income_sum|
     if @cell4 
      @cell7 += income_sum.value.to_i
      @cell5 = @cell7
      @cell6 = "円"
      @cellname1 = income_sum.name 
     end
    end

    @internet4 = Income.where(name: "インターネット").where(user_id: current_user.id)
    @internet7 = 0
    
    @internet4.each do |income_sum|
     if @internet4 
      @internet7 += income_sum.value.to_i
      @internet5 = @internet7
      @internet6 = "円"
      @internetname1 = income_sum.name 
     end
    end

    @Medical4 = Income.where(name: "医療費").where(user_id: current_user.id)
    @Medical7 = 0
    
    @Medical4.each do |income_sum|
     if @Medical4 
      @Medical7 += income_sum.value.to_i
      @Medical5 = @Medical7 
      @Medical6 = "円"
      @Medicalname1 = income_sum.name 
     end
    end

    @water4 = Income.where(name: "水道代").where(user_id: current_user.id)
    @water7 = 0
    
    @water4.each do |income_sum|
     if @water4 
      @water7 += income_sum.value.to_i
      @water5 = @water7
      @water6 = "円"
      @watername1 = income_sum.name
     end
    end

    @gas4 = Income.where(name: "ガス代").where(user_id: current_user.id)
    @gas7 = 0
    
    @gas4.each do |income_sum|
     if @gas4 
      @gas7 += income_sum.value.to_i
      @gas5 = @gas7
      @gas6 = "円"
      @gasname1 = income_sum.name 
     end
    end

    @Electrical4 = Income.where(name: "電気代").where(user_id: current_user.id)
    @Electrical7 = 0
    
    @Electrical4.each do |income_sum|
     if @Electrical4 
      @Electrical7 += income_sum.value.to_i
      @Electrical5 = @Electrical7
      @Electrical6 = "円"
      @Electricalname1 = income_sum.name 
     end
    end

    @rent4 = Income.where(name: "家賃").where(user_id: current_user.id)
    @rent7 = 0
    
    @rent4.each do |income_sum|
     if @rent4 
      @rent7 += income_sum.value.to_i
      @rent5 = @rent7
      @rent6 = "円"
      @rentname1 = income_sum.name 
     end
    end

    @clothing4 = Income.where(name: "衣類").where(user_id: current_user.id)
    @clothing7 = 0
    
    @clothing4.each do |income_sum|
     if @clothing4 
      @clothing7 += income_sum.value.to_i
      @clothing5 = @clothing7 
      @clothing6 = "円"
      @clothingname1 = income_sum.name 
     end
    end


    @hair4 = Income.where(name: "美容院").where(user_id: current_user.id)
    @hair7 = 0
    
    @hair4.each do |income_sum|
     if @hair4 
      @hair7 += income_sum.value.to_i
      @hair5 = @hair7 
      @hair6 = "円"
      @hairname1 = income_sum.name 
     end
    end

    @Entertainment4 = Income.where(name: "娯楽費").where(user_id: current_user.id)
    @Entertainment7 = 0
    
    @Entertainment4.each do |income_sum|
     if @Entertainment4 
      @Entertainment7 += income_sum.value.to_i
      @Entertainment5 = @Entertainment7
      @Entertainment6 = "円"
      @Entertainmentname1 = income_sum.name 
     end
    end

    @insurance4 = Income.where(name: "保険").where(user_id: current_user.id)
    @insurance7 = 0
    
    @insurance4.each do |income_sum|
     if @insurance4 
      @insurance7 += income_sum.value.to_i
      @insurance5 = @insurance7
      @insurance6 = "円"
      @insurancename1 = income_sum.name 
     end
    end

    @card4 = Income.where(name: "カード払い").where(user_id: current_user.id)
    @card7 = 0
    
    @card4.each do |income_sum|
     if @card4 
      @card7 += income_sum.value.to_i
      @card5 = @card7
      @card6 = "円"
      @cardname1 = income_sum.name 
     end
    end

    @other4 = Income.where(name: "その他").where(user_id: current_user.id)
    @other7 = 0
    
    @other4.each do |income_sum|
     if @other4 
      @other7 += income_sum.value.to_i
      @other5 = @other7
      @other6 = "円"
      @othername1 = income_sum.name 
     end
    end

    @income4 = Income.where(name: "収入").where(user_id: current_user.id)
    @income7 = 0
    
    @income4.each do |income_sum|
     if @income4 
      @income7 += income_sum.value.to_i
      @income5 = @income7
      @income6 = "円"
      @incomename1 = income_sum.name 
     end
    end


   #  収入の編集
   @range = Date.today.beginning_of_day..Date.today.end_of_day
    
   @food4e = Income.where(name: "食費e").where(user_id: current_user.id)
   @food7e = 0
   
   @food4e.each do |income_sum|
    if @food4e 
     @food7e += income_sum.value.to_i
     @food5e = @food7e
    end
   end

   @dailynecessities4e = Income.where(name: "日用品e").where(user_id: current_user.id)
   @dailynecessities7e = 0
   
   @dailynecessities4e.each do |income_sum|
    if @dailynecessities4e 
     @dailynecessities7e += income_sum.value.to_i
     @dailynecessities5e = @dailynecessities7e
    end
   end

   @tex4e = Income.where(name: "交通費e").where(user_id: current_user.id)
   @tex7e = 0
   
   @tex4e.each do |income_sum|
    if @tex4e 
     @tex7e += income_sum.value.to_i
     @tex5e = @tex7e
    end
   end

   @book4e = Income.where(name: "本・雑誌e").where(user_id: current_user.id)
   @book7e = 0
   
   @book4e.each do |income_sum|
    if @tex4e 
     @book7e += income_sum.value.to_i
     @book5e = @book7e
    end
   end

   @cell4e = Income.where(name: "携帯電話e").where(user_id: current_user.id)
   @cell7e = 0
   
   @cell4e.each do |income_sum|
    if @cell4e 
     @cell7e += income_sum.value.to_i
     @cell5e = @cell7e
    end
   end

   @internet4e = Income.where(name: "インターネットe").where(user_id: current_user.id)
   @internet7e = 0
   
   @internet4e.each do |income_sum|
    if @internet4e 
     @internet7e += income_sum.value.to_i
     @internet5e = @internet7e
    end
   end

   @Medical4e = Income.where(name: "医療費e").where(user_id: current_user.id)
   @Medical7e = 0
   
   @Medical4e.each do |income_sum|
    if @Medical4e 
     @Medical7e += income_sum.value.to_i
     @Medical5e = @Medical7e 
    end
   end

   @water4e = Income.where(name: "水道代e").where(user_id: current_user.id)
   @water7e = 0
   
   @water4e.each do |income_sum|
    if @water4e 
     @water7e += income_sum.value.to_i
     @water5e = @water7e
    end
   end

   @gas4e = Income.where(name: "ガス代e").where(user_id: current_user.id)
   @gas7e = 0
   
   @gas4e.each do |income_sum|
    if @gas4e 
     @gas7e += income_sum.value.to_i
     @gas5e = @gas7e
    end
   end

   @Electrical4e = Income.where(name: "電気代e").where(user_id: current_user.id)
   @Electrical7e = 0
   
   @Electrical4e.each do |income_sum|
    if @Electrical4e 
     @Electrical7e += income_sum.value.to_i
     @Electrical5e = @Electrical7e 
    end
   end

   @rent4e = Income.where(name: "家賃e").where(user_id: current_user.id)
   @rent7e = 0
   
   @rent4e.each do |income_sum|
    if @rent4e 
     @rent7e += income_sum.value.to_i
     @rent5e = @rent7e
    end
   end

   @clothing4e = Income.where(name: "衣類e").where(user_id: current_user.id)
   @clothing7e = 0
   
   @clothing4e.each do |income_sum|
    if @clothing4e 
     @clothing7e += income_sum.value.to_i
     @clothing5e = @clothing7e 
    end
   end


   @hair4e = Income.where(name: "美容院e").where(user_id: current_user.id)
   @hair7e = 0
   
   @hair4e.each do |income_sum|
    if @hair4e 
     @hair7e += income_sum.value.to_i
     @hair5e = @hair7e 
    end
   end

   @Entertainment4e = Income.where(name: "娯楽費e").where(user_id: current_user.id)
   @Entertainment7e = 0
   
   @Entertainment4e.each do |income_sum|
    if @Entertainment4e 
     @Entertainment7e += income_sum.value.to_i
     @Entertainment5e = @Entertainment7e
    end
   end

   @insurance4e = Income.where(name: "保険e").where(user_id: current_user.id)
   @insurance7e = 0
   
   @insurance4e.each do |income_sum|
    if @insurance4e 
     @insurance7e += income_sum.value.to_i
     @insurance5e = @insurance7e
    end
   end

   @card4e = Income.where(name: "カード払いe").where(user_id: current_user.id)
   @card7e = 0
   
   @card4e.each do |income_sum|
    if @card4e 
     @card7e += income_sum.value.to_i
     @card5e = @card7e
    end
   end

   @other4e = Income.where(name: "その他e").where(user_id: current_user.id)
   @other7e = 0
   
   @other4e.each do |income_sum|
    if @other4e 
     @other7e += income_sum.value.to_i
     @other5e = @other7e
    end
   end

   @income4e = Income.where(name: "収入e").where(user_id: current_user.id)
   @income7e = 0
   
   @income4e.each do |income_sum|
    if @income4e 
     @income7e += income_sum.value.to_i
     @income5e = @income7e
    end
   end

  #  支出の機能(残高用)


     
  @food0b = Spending.where(name: "食費").where(user_id: current_user.id)
  @food3b = 0
  
  @food0b.each do |spending_sum| 
    @food3b += spending_sum.value.to_i
    @food1b = @food3b
  end
  @fo1 = @food5.to_i - @food7e.to_i 
  @fo2 = @fo1 - @food1b.to_i


  @dailynecessities0b = Spending.where(name: "日用品").where(user_id: current_user.id)
  @dailynecessities3b = 0
  
  @dailynecessities0b.each do |spending_sum|
    @dailynecessities3b += spending_sum.value.to_i
    @dailynecessities1b = @dailynecessities3b
  end
   @da1 = @dailynecessities5.to_i - @dailynecessities7e.to_i 
   @da2 = @da1 - @dailynecessities1b.to_i


  @tex0b = Spending.where(name: "交通費").where(user_id: current_user.id)
  @tex3b = 0
  
  @tex0b.each do |spending_sum|
    @tex3b += spending_sum.value.to_i
    @tex1b = @tex3b
  end
  @te1 = @tex5.to_i - @tex7e.to_i 
  @te2 = @te1 - @tex1b.to_i

  @book0b = Spending.where(name: "本・雑誌").where(user_id: current_user.id)
  @book3b = 0
  
  @book0b.each do |spending_sum| 
    @book3b += spending_sum.value.to_i
    @book1b = @book3b
  end
  @bo1 = @book5.to_i - @book7e.to_i 
  @bo2 = @bo1 - @book1b.to_i

  @cell0b = Spending.where(name: "携帯電話").where(user_id: current_user.id)
  @cell3b = 0
  
  @cell0b.each do |spending_sum| 
    @cell3b += spending_sum.value.to_i
    @cell1b = @cell3b 
  end
  @ce1 = @cell5.to_i - @cell7e.to_i 
  @ce2 = @ce1 - @cell1b.to_i


  @internet0b = Spending.where(name: "インターネット").where(user_id: current_user.id)
  @internet3b = 0
  
  @internet0b.each do |spending_sum|
    @internet3b += spending_sum.value.to_i
    @internet1b = @internet3b
  end
  @in1 = @internet5.to_i - @internet7e.to_i 
  @in2 = @in1 - @internet3b.to_i

  @Medical0b = Spending.where(name: "医療費").where(user_id: current_user.id)
  @Medical3b = 0
  
  @Medical0b.each do |spending_sum| 
    @Medical3b += spending_sum.value.to_i
    @Medical1b = @Medical3b 
  end
  @me1 = @Medical5.to_i - @Medical7e.to_i 
  @me2 = @me1 - @Medical3b.to_i

  @water0b = Spending.where(name: "水道代").where(user_id: current_user.id)
  @water3b = 0
  
  @water0b.each do |spending_sum|
    @water3b += spending_sum.value.to_i
    @water1b = @water3b
  end
  @wa1 = @water5.to_i - @water7e.to_i 
  @wa2 = @wa1 - @water3b.to_i


  @gas0b = Spending.where(name: "ガス代").where(user_id: current_user.id)
  @gas3b = 0
  
  @gas0b.each do |spending_sum| 
    @gas3b += spending_sum.value.to_i
    @gas1b = @gas3b
  end
  @ga1 = @gas5.to_i - @gas7e.to_i 
  @ga2 = @ga1 - @gas3b.to_i

  @Electrical0b = Spending.where(name: "電気代").where(user_id: current_user.id)
  @Electrical3b = 0
  
  @Electrical0b.each do |spending_sum| 
    @Electrical3b += spending_sum.value.to_i
    @Electrical1b = @Electrical3
  end
  @el1 = @Electrical5.to_i - @Electrical7e.to_i 
  @el2 = @el1 - @Electrical3b.to_i


  @rent0b = Spending.where(name: "家賃").where(user_id: current_user.id)
  @rent3b = 0
  
  @rent0b.each do |spending_sum| 
    @rent3b += spending_sum.value.to_i
    @rent1b = @rent3b
  end
  @re1 = @rent5.to_i - @rent7e.to_i 
  @re2 = @re1 - @rent3b.to_i


  @clothing0b = Spending.where(name: "衣類").where(user_id: current_user.id)
  @clothing3b = 0
  
  @clothing0b.each do |spending_sum| 
    @clothing3b += spending_sum.value.to_i
    @clothing1b = @clothing3b 
  end
  @cl1 = @clothing5.to_i - @clothing7e.to_i 
  @cl2 = @cl1 - @clothing3b.to_i


  @hair0b = Spending.where(name: "美容院").where(user_id: current_user.id)
  @hair3b = 0
  
  @hair0b.each do |spending_sum| 
    @hair3b += spending_sum.value.to_i
    @hair1b = @hair3b 
  end
  @ha1 = @hair5.to_i - @hair7e.to_i 
  @ha2 = @ha1 - @hair3b.to_i


  @Entertainment0b = Spending.where(name: "娯楽費").where(user_id: current_user.id)
  @Entertainment3b = 0
  
  @Entertainment0b.each do |spending_sum| 
    @Entertainment3b += spending_sum.value.to_i
    @Entertainment1b = @Entertainment3
  end
  @en1 = @Entertainment5.to_i - @Entertainment7e.to_i 
  @en2 = @en1 - @Entertainment3b.to_i


  @insurance0b = Spending.where(name: "保険").where(user_id: current_user.id)
  @insurance3b = 0
  
  @insurance0b.each do |spending_sum|
    @insurance3b += spending_sum.value.to_i
    @insurance1b = @insurance3b
  end
  @ins1 = @insurance5.to_i - @insurance7e.to_i 
  @ins2 = @ins1 - @insurance3b.to_i

  @card0b = Spending.where(name: "カード払い").where(user_id: current_user.id)
  @card3b = 0
  
  @card0b.each do |spending_sum|
    @card3b += spending_sum.value.to_i
    @card1b = @card3b
  end
  @ca1 = @card5.to_i - @card7e.to_i 
  @ca2 = @ca1 - @card3b.to_i


  @other0b = Spending.where(name: "その他").where(user_id: current_user.id)
  @other3b = 0
  
  @other0b.each do |spending_sum| 
    @other3b += spending_sum.value.to_i
    @other1b = @other3b
  end
  @ot1 = @other5.to_i - @other7e.to_i 
  @ot2 = @ot1 - @other3b.to_i

    
    

   end
 end
 
 