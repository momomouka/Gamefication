class AccountsController < ApplicationController
  
  def show
    current_member
    @member = @current_member
  end
  
  def edit
    @member = @current_member
  end
  
  def update
    @member = @current_member
    @member.assign_attributes(params[:member])
    if @member.update
      redirect_to :account, notice: "プロフィール情報を変更しました。"
    else
      render "edit"
    end
  end
  
end
