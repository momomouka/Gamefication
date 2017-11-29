class ClickresultsController < ApplicationController
  before_action :login_check
  protect_from_forgery :except => [:game]

  def login_check
    if @current_member == nil
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
    @clickresult.clickTaskResult = params[:clickscore]
    @clickresult.member_id = @current_member.id
    @clickresult.save!
    redirect_to '/sumscores/new'
  end

  def game
  end

  def score_get
    @clickresult = Clickresult.new
    @clickresult.clickTaskResult = params[:clickscore]
    @clickresult.member_id = @current_member.id
    @clickresult.save
    redirect_to '/sumscores/new'
  end

  def show
  end

end
