class AtmtresultsController < ApplicationController
  before_action :login_check

  def login_check
    if @current_member == nil
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
    @atmtresult.atmtTaskResult = params[:atmtscore]
    @atmtresult.member_id = @current_member.id
    @atmtresult.save
    redirect_to '/sumscores/new'
  end
  
  def game
  end
  
  def score_get
    @atmtresult = Atmtresult.new
    @atmtresult.atmtTaskResult = params[:atmtscore]
    @atmtresult.member_id = @current_member.id
    @atmtresult.save!

    redirect_to '/sumscores/new'
  end
  
  def show
  end
  
end
