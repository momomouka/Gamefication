class AtmtresultsController < ApplicationController
  before_action :login_check
  
  def login_check
    if @current_member.id == nil
      flash[:notice] = "各種課題をやる為には、ログインが必要です"
      redirect_to("/login")
    end
  end
  
	 def index

   end
  
  def new
    @atmtresult = Atmtresult.new
  end

  def create 
    @atmtresult = Atmtresult.new
    @atmtresult.atmtTaskResult = $atmtscore
    @atmtresult.member_id = @current_member.id
    @atmtresult.save
    redirect_to '/sumscores/new'
  end
  
  def game
    @atmtresult = Atmtresult.new
    @atmtscore = params[:atmtscore]
  end
  
  def score_get
    $atmtscore = params[:atmtscore]
    render :nothing => true
  end
  
  def show
  end
  
end
