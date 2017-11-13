class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    member = Member.find_by(passname: params[:session][:passname])
    if member && member.authenticate(params[:session][:password])
      log_in member
      redirect_to member
    else
      flash.now[:danger] = 'ログインIDとパスワードが一致しませんでした。'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_url
  end  

end
