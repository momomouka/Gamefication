class SumscoresController < ApplicationController
	before_action :login_check

	def login_check
		if @current_member == nil
			flash[:notice] = "このページを開くには、ログインが必要です"
			redirect_to("/login")
		end
	end

	def show

	end

	def new

	end

	def update
		@atmtresults = Atmtresult.where(member_id: @current_member.id).where.not(atmtTaskResult: nil)
		@mathresults = Mathresult.where(member_id: @current_member.id).where.not(mathTaskResult: nil)
		@clickresults = Clickresult.where(member_id: @current_member.id).where.not(clickTaskResult: nil)

		$atmtsum = 0
		$mathsum = 0
		$clicksum = 0

		@atmtresults.each do |member|
			$atmtsum += member.atmtTaskResult
		end

		@mathresults.each do |member|
			$mathsum += member.mathTaskResult
		end

		@clickresults.each do |member|
			$clicksum += member.clickTaskResult
		end

		@sumscore = Member.find_by(id: @current_member.id)
		@sumscore.update(atmt:$atmtsum,math:$mathsum,click:$clicksum)
		redirect_to '/tasks/index'
	end

end
