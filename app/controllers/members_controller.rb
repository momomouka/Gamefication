class MembersController < ApplicationController

  def index
    @members = Member.order(:id)

    respond_to do |format|
      format.html
      format.csv { send_data @members.to_csv , type: 'text/csv; charset=shift_jis'}
    end
  end

  def show
    @member = Member.find(params[:id])

    unless @current_member.administrator == true
      redirect_to root_path

    end
  end

  def new
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create
    params.permit!
    @member = Member.new(params[:member])
    if @member.save
      redirect_to "/login", notice: "会員を登録しました。"
    else
      render "new"
    end
  end

  def update
    params.permit!
    @member = Member.find(params[:id])
    @member.update_attributes(params[:member])
    if @member.save!
      redirect_to '/members', notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :members, notice: "会員を削除しました。"
  end

  def search
    @member = Member.search(params[:q])
    render "index"
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:member).permit(:name, :email, :password, :password_confirmation)
  end




end
