class AchievementsController < ApplicationController
  before_action :login_check

  def login_check
    if @current_member.id == nil
      flash[:notice] = "このページを開くには、ログインが必要です"
      redirect_to("/login")
    end
  end

  def show
    case @current_member.tasktype
      when 1 then
        redirect_to '/achievements/atmt'
      when 2 then
        redirect_to '/achievements/math'
      when 3 then
        redirect_to '/achievements/click'
    end
  end

  def atmt
    @highscore_atmt = Atmtresult.where(member_id: @current_member).maximum('atmtTaskResult')
    @lowscore_atmt = Atmtresult.where(member_id: @current_member).minimum('atmtTaskResult')
    @taskcount_atmt = Atmtresult.where(member_id: @current_member).count
    @sumscore = Sumscore.find_by_member_id(@current_member.id)
  end

  def math
    @highscore_math = Mathresult.where(member_id: @current_member).maximum('mathTaskResult')
    @lowscore_math = Mathresult.where(member_id: @current_member).minimum('mathTaskResult')
    @taskcount_math = Mathresult.where(member_id: @current_member).count
    @sumscore = Sumscore.find_by_member_id(@current_member.id)

  end

  def click
    @highscore_click = Clickresult.where(member_id: @current_member).maximum('clickTaskResult')
    @lowscore_click = Clickresult.where(member_id: @current_member).minimum('clickTaskResult')
    @taskcount_click = Clickresult.where(member_id: @current_member).count
    @sumscore = Sumscore.find_by_member_id(@current_member.id)
  end

  def new

  end

  def create
    @member_achieve = MemberAchieve.new
    @member_achieve.member_id = @current_member.id
    @member_achieve.achievement_id = params[:id]
    @member_achieve.save!
    redirect_to '/achievements'
  end
end
