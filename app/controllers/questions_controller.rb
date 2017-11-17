class QuestionsController < ApplicationController
  before_action :login_check

  def login_check
    if @current_member.id == nil
      flash[:notice] = "このページを開くには、ログインが必要です"
      redirect_to("/login")
    end
  end


  def new
    @que = Question.new
  end

  def create
    params.permit!
    @que = Question.new(params[:question])
    @que.member_id = @current_member.id
    @member.save!
  end

end
