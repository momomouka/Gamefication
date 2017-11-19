class RankingsController < ApplicationController
  before_action :login_check

  def login_check
    if @current_member.id == nil
      flash[:notice] = "このページを開くには、ログインが必要です"
      redirect_to("/login")
    end
  end

  def index
    case @current_member.tasktype
      when 1 then
        redirect_to '/rankings/atmt'
      when 2 then
        redirect_to '/rankings/math'
      when 3 then
        redirect_to '/rankings/click'
    end
  end

  def atmt
    @rank_atmt = Sumscore.order("atmt desc").where.not(atmt: 0)
  end

  def math
    @rank_math = Sumscore.order("math desc").where.not(math: 0)
  end

  def click
    @rank_click = Sumscore.order("click desc").where.not(click: 0)
  end

end