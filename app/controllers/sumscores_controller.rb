class SumscoresController < ApplicationController
	before_action :login_check

	def login_check
		if @current_member.id == nil
			flash[:notice] = "このページを開くには、ログインが必要です"
			redirect_to("/login")
		end
	end

	def show
		@rank = Sumscore.order("atmt desc")
	end

	def new
		@atmtresults = Atmtresult.where(member_id: @current_member.id)
		@mathresults = Mathresult.where(member_id: @current_member.id)
		@clickresults = Clickresult.where(member_id: @current_member.id)

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
	end

	def create
		@sumscore = Sumscore.new
		@sumscore.atmt = $atmtsum
		@sumscore.math = $mathsum
		@sumscore.click = $clicksum
		@sumscore.member_id = @current_member.id
		@sumscore.save
		redirect_to '/tasks/index'
	end

	def update
		@sumscore = Sumscore.find_by(member_id: @current_member.id)
		@sumscore.update(atmt:$atmtsum,math:$mathsum,click:$clicksum)
		redirect_to '/tasks/index'
	end

end
