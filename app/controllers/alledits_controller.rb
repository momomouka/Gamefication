class AlleditsController < ApplicationController

  def show
  end

  def taska
    @members = Member.all
    @members.update_all(tasktype: 1)
    redirect_to '/members'
  end

  def taskm
    @members = Member.all
    @members.update_all(tasktype: 2)
    redirect_to '/members'
  end

  def taskc
    @members = Member.all
    @members.update_all(tasktype: 3)
    redirect_to '/members'
  end

  def gamer
    @members = Member.all
    @members.update_all(gametype: 2)
    redirect_to '/members'
  end

  def gamea
    @members = Member.all
    @members.update_all(gametype: 3)
    redirect_to '/members'
  end

  def all
    @members = Member.all
    @members.update_all(tasktype: 4, gametype: 4)
    redirect_to '/members'
  end

  def not
    @members = Member.all
    @members.update_all(tasktype: 4 , gametype: 4)
    redirect_to '/members'
  end

  def member
    @members = Member.order(params[:id])
    respond_to do |format|
      format.html
      format.csv { send_data @members.to_csv , type: 'text/csv; charset=shift_jis'}
    end
  end

  def atmt
    @atmts = Atmtresult.order(:member_id)
    respond_to do |format|
      format.html
      format.csv { send_data @atmts.to_csv , type: 'text/csv; charset=shift_jis'}
    end
  end

  def math
    @maths = Mathresult.order(:member_id)
    respond_to do |format|
      format.html
      format.csv { send_data @maths.to_csv , type: 'text/csv; charset=shift_jis'}
    end
  end

  def click
    @clicks = Clickresult.order(:member_id)
    respond_to do |format|
      format.html
      format.csv { send_data @clicks.to_csv , type: 'text/csv; charset=shift_jis'}
    end
  end

end
