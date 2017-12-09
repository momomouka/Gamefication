class RankingsController < ApplicationController
  before_action :login_check


  def login_check
    if @current_member == nil
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
    @member = Member.find(@current_member.id)
    @count = @member.ranking + 1
    @member = Member.find(@current_member.id).update!(ranking: @count)

    @rank_atmt = Member.where(tasktype: 1, gametype: 2).where.not(atmt: 0)

    @rank_atmttoday = Member.where(tasktype: 1, gametype: 2).where.not(atmttoday: 0)

  end

  def math
    @member = Member.find(@current_member.id)
    @count = @member.ranking + 1
    @member = Member.find(@current_member.id).update!(ranking: @count)

    @rank_math = Member.where(tasktype: 2, gametype: 2).where.not(math: 0)

    @rank_mathtoday = Member.where(tasktype: 2, gametype: 2).where.not(mathtoday: 0)
  end

  def click
    @member = Member.find(@current_member.id)
    @count = @member.ranking + 1
    @member = Member.find(@current_member.id).update!(ranking: @count)

    @rank_click = Member.where(tasktype: 3, gametype: 2).where.not(click: 0)

    @rank_clicktoday = Member.where(tasktype: 3, gametype: 2).where.not(clicktoday: 0)

  end

end