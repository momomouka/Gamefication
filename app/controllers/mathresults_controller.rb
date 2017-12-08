class MathresultsController < ApplicationController
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
   @mathresult = Mathresult.new
 end

 def create
   @mathresult = Mathresult.new
   @mathresult.mathTaskResult = params[:mathscore]
   @mathresult.member_id = @current_member.id
   @mathresult.save!
   redirect_to '/sumscores/new'
 end

 def game
 end

 def score_get
   @mathresult = Mathresult.new
   @mathresult.mathTaskResult = params[:mathscore]
   @mathresult.member_id = @current_member.id
   @mathresult.save
   redirect_to '/sumscores/new'
 end

 def show
 end

end
