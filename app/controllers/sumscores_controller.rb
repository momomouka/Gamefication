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

		@atmttodayresults = Atmtresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(atmtTaskResult: nil)
		@mathtodayresults = Mathresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(mathTaskResult: nil)
		@clicktodayresults = Clickresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(clickTaskResult: nil)

		$atmtsum = 0
		$mathsum = 0
		$clicksum = 0

		@atmtresults.each do |result|
			$atmtsum += result.atmtTaskResult
		end

		@mathresults.each do |result|
			$mathsum += result.mathTaskResult
		end

		@clickresults.each do |result|
			$clicksum += result.clickTaskResult
		end

		$atmttodaysum = 0
		$mathtodaysum = 0
		$clicktodaysum = 0

		@atmttodayresults.each do |result|
			$atmttodaysum += result.atmtTaskResult
		end

		@mathtodayresults.each do |result|
			$mathtodaysum += result.mathTaskResult
		end

		@clicktodayresults.each do |result|
			$clicktodaysum += result.clickTaskResult
		end

		@sumscore = Member.find_by(id: @current_member.id)
		@sumscore.update(atmt:$atmtsum,math:$mathsum,click:$clicksum,atmttoday:$atmttodaysum,mathtoday:$mathtodaysum,clicktoday:$clicktodaysum)
		redirect_to '/tasks/index'
	end

end
