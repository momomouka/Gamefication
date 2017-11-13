class ClickresultsController < ApplicationController
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
    @clickresult = Clickresult.new
  end

  def create
    @clickresult = Clickresult.new
    @clickresult.clickTaskResult = $clickscore
    @clickresult.member_id = @current_member.id
    @clickresult.save
    redirect_to '/sumscores/new'
  end

  def game
    @clickresult = Clickresult.new
    @clickscore = params[:clickscore]
  end

  def score_get
    $clickscore = params[:clickscore]
    render :nothing => true
  end

  def show
  end

end
