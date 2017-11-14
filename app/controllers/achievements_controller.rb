class AchievementsController < ApplicationController
	before_action :login_check

	def login_check
		if @current_member.id == nil
			flash[:notice] = "このページを開くには、ログインが必要です"
			redirect_to("/login")
		end
	end

	def show
		@highscore_atmt = Atmtresult.where(member_id: @current_member).maximum('atmtTaskResult')
		@highscore_math = Mathresult.where(member_id: @current_member).maximum('mathTaskResult')
		@highscore_click = Clickresult.where(member_id: @current_member).maximum('clickTaskResult')

		@lowscore_atmt = Atmtresult.where(member_id: @current_member).minimum('atmtTaskResult')
		@lowscore_math = Mathresult.where(member_id: @current_member).minimum('mathTaskResult')
		@lowscore_click = Clickresult.where(member_id: @current_member).minimum('clickTaskResult')

		@taskcount_atmt = Atmtresult.where(member_id: @current_member).count
		@taskcount_math = Mathresult.where(member_id: @current_member).count
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
