class MathresultsController < ApplicationController
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
   @mathresult = Mathresult.new
 end

 def create
   @mathresult = Mathresult.new
   @mathresult.mathTaskResult = $mathscore
   @mathresult.member_id = @current_member.id
   @mathresult.save
   redirect_to '/sumscores/new'
 end

 def game
   @mathresult = Mathresult.new
   @mathscore = params[:mathscore]
 end

 def score_get
   $mathscore = params[:mathscore]
   render :nothing => true
 end

 def show
 end

end
