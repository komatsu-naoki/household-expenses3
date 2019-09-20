class MeetingsController < ApplicationController
  # before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # # GET /meetings
  # # GET /meetings.json
  def index
    @meetings = Meeting.all
    
  end

  # # GET /meetings/1
  # # GET /meetings/1.json
  def show
    @day = params[:id].to_s
    @meeting1 = Spending.where(user_id: current_user.id).select("date")
  

    
  @meeting1.each do |meet|
    if meet.date == @day
    @meeting3 = meet.date
    end
  end
  
    @food0d = Spending.where(name: "食費").where(user_id: current_user.id).where(date: @meeting3)
     @food3d = 0
     
     @food0d.each do |spending_sum|
       @food3d += spending_sum.value.to_i
       @food1d = @food3d
       @food2d = "円"
       @foodnamed = spending_sum.name 
     end
 
     @dailynecessities0d = Spending.where(name: "日用品").where(user_id: current_user.id).where(date: @meeting3)
     @dailynecessities3d = 0
     
     @dailynecessities0d.each do |spending_sum|
       @dailynecessities3d += spending_sum.value.to_i
       @dailynecessities1d = @dailynecessities3d
       @dailynecessities2d = "円"
       @dailynecessitiesnamed = spending_sum.name 
     end
 
     @tex0d = Spending.where(name: "交通費").where(user_id: current_user.id).where(date: @meeting3)
     @tex3d = 0
     
     @tex0d.each do |spending_sum|
       @tex3d += spending_sum.value.to_i
       @tex1d = @tex3d
       @tex2d = "円"
       @texnamed = spending_sum.name 
     end
 
     @book0d = Spending.where(name: "本・雑誌").where(user_id: current_user.id).where(date: @meeting3)
     @book3d = 0
     
     @book0d.each do |spending_sum|
       @book3d += spending_sum.value.to_i
       @book1d = @book3d
       @book2d = "円"
       @booknamed = spending_sum.name 
     end
 
     @cell0d = Spending.where(name: "携帯電話").where(user_id: current_user.id).where(date: @meeting3)
     @cell3d = 0
     
     @cell0d.each do |spending_sum|
       @cell3d += spending_sum.value.to_i
       @cell1d = @cell3d
       @cell2d = "円"
       @cellnamed = spending_sum.name 
     end
 
     @internet0d = Spending.where(name: "インターネット").where(user_id: current_user.id).where(date: @meeting3)
     @internet3d = 0
     
     @internet0d.each do |spending_sum|
       @internet3d += spending_sum.value.to_i
       @internet1d = @internet3d
       @internet2d = "円"
       @internetnamed = spending_sum.name 
     end
 
     @Medical0d = Spending.where(name: "医療費").where(user_id: current_user.id).where(date: @meeting3)
     @Medical3d = 0
     
     @Medical0d.each do |spending_sum|
       @Medical3d += spending_sum.value.to_i
       @Medical1d = @Medical3d 
       @Medical2d = "円"
       @Medicalnamed = spending_sum.name 
     end
 
     @water0d = Spending.where(name: "水道代").where(user_id: current_user.id).where(date: @meeting3)
     @water3d = 0
     
     @water0d.each do |spending_sum| 
       @water3d += spending_sum.value.to_i
       @water1d = @water3d
       @water2d = "円"
       @waternamed = spending_sum.name
     end
 
     @gas0d = Spending.where(name: "ガス代").where(user_id: current_user.id).where(date: @meeting3)
     @gas3d = 0
     
     @gas0d.each do |spending_sum| 
       @gas3d += spending_sum.value.to_i
       @gas1d = @gas3d
       @gas2d = "円"
       @gasnamed = spending_sum.name 
     end
 
     @Electrical0d = Spending.where(name: "電気代").where(user_id: current_user.id).where(date: @meeting3)
     @Electrical3d = 0
     
     @Electrical0d.each do |spending_sum|
       @Electrical3d += spending_sum.value.to_i
       @Electrical1d = @Electrical3d
       @Electrical2d = "円"
       @Electricalnamed = spending_sum.name 
     end
 
     @rent0d = Spending.where(name: "家賃").where(user_id: current_user.id).where(date: @meeting3)
     @rent3d = 0
     
     @rent0d.each do |spending_sum| 
       @rent3d += spending_sum.value.to_i
       @rent1d = @rent3d
       @rent2d = "円"
       @rentnamed = spending_sum.name 
     end
 
     @clothing0d = Spending.where(name: "衣類").where(user_id: current_user.id).where(date: @meeting3)
     @clothing3d = 0
     
     @clothing0d.each do |spending_sum| 
       @clothing3d += spending_sum.value.to_i
       @clothing1d = @clothing3d 
       @clothing2d = "円"
       @clothingnamed = spending_sum.name 
     end


     @hair0d = Spending.where(name: "美容院").where(user_id: current_user.id).where(date: @meeting3)
     @hair3d = 0
     
     @hair0d.each do |spending_sum| 
       @hair3d += spending_sum.value.to_i
       @hair1d = @hair3d 
       @hair2d = "円"
       @hairnamed = spending_sum.name 
     end
 
     @Entertainment0d = Spending.where(name: "娯楽費").where(user_id: current_user.id).where(date: @meeting3)
     @Entertainment3d = 0
     
     @Entertainment0d.each do |spending_sum| 
       @Entertainment3d += spending_sum.value.to_i
       @Entertainment1d = @Entertainment3d
       @Entertainment2d = "円"
       @Entertainmentnamed = spending_sum.name 
     end
 
     @insurance0d = Spending.where(name: "保険").where(user_id: current_user.id).where(date: @meeting3)
     @insurance3d = 0
     
     @insurance0d.each do |spending_sum| 
       @insurance3d += spending_sum.value.to_i
       @insurance1d = @insurance3d
       @insurance2d = "円"
       @insurancenamed = spending_sum.name 
     end
 
     @card0d = Spending.where(name: "カード払い").where(user_id: current_user.id).where(date: @meeting3)
     @card3d = 0
     
     @card0d.each do |spending_sum| 
       @card3d += spending_sum.value.to_i
       @card1d = @card3d
       @card2d = "円"
       @cardnamed = spending_sum.name
     end
 
     @other0d = Spending.where(name: "その他").where(user_id: current_user.id).where(date: @meeting3)
     @other3d = 0
     
     @other0d.each do |spending_sum| 
       @other3d += spending_sum.value.to_i
       @other1d = @other3d
       @other2d = "円"
       @othernamed = spending_sum.name 
     end

    
    
    
    
   
  end

  # # GET /meetings/new
  # def new
  #   @meeting = Meeting.new
  # end

  # # GET /meetings/1/edit
  # def edit
  # end

  # # POST /meetings
  # # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)

    # respond_to do |format|
    #   if @meeting.save
    #     format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
    #     format.json { render :show, status: :created, location: @meeting }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @meeting.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # # PATCH/PUT /meetings/1
  # # PATCH/PUT /meetings/1.json
  # def update
  #   respond_to do |format|
  #     if @meeting.update(meeting_params)
  #       format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @meeting }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @meeting.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /meetings/1
  # # DELETE /meetings/1.json
  # def destroy
  #   @meeting.destroy
  #   respond_to do |format|
  #     format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_meeting
  #     @meeting = Meeting.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :start_time)
    end
end
