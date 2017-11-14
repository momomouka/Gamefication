class TopController < ApplicationController
	def index
	end

	def about
		if @current_member.id == nil
			flash[:notice] = "このページを開くには、ログインが必要です"
			redirect_to("/login")
		end
	end
end
