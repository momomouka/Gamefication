class RankingsController < ApplicationController
	before_action :login_check

	def login_check
		if @current_member.id == nil
			flash[:notice] = "このページを開くには、ログインが必要です"
			redirect_to("/login")
		end
	end

	def index
		@rank_atmt = Sumscore.order("atmt desc")
		@rank_math = Sumscore.order("math desc")
		@rank_click = Sumscore.order("click desc")
	end
end
