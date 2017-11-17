class AccountsController < ApplicationController
  
  def show
    @member = Member.find(@current_member.id)
  end
  
  def edit
    @member = Member.find(@current_member.id)
  end
  
  def update
    @member = Member.find(@current_member.id)
    @member.update_attributes(params[:member])
    if @member.save!
      redirect_to @member, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end
end
