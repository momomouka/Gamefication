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

		@atmtTodayresults = Atmtresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(atmtTaskResult: nil)
		@mathTodayresults = Mathresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(mathTaskResult: nil)
		@clickTodayresults = Clickresult.where(member_id: @current_member.id, created_at: Date.today.all_day).where.not(clickTaskResult: nil)

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

		$atmtTodaysum = 0
		$mathTodaysum = 0
		$clickTodaysum = 0

		@atmtTodayresults.each do |result|
			$atmtTodaysum += result.atmtTaskResult
		end

		@mathTodayresults.each do |result|
			$mathTodaysum += result.mathTaskResult
		end

		@clickTodayresults.each do |result|
			$clickTodaysum += result.clickTaskResult
		end

		@sumscore = Member.find_by(id: @current_member.id)
		@sumscore.update(atmt:$atmtsum,math:$mathsum,click:$clicksum,atmtToday:$atmtTodaysum,mathToday:$mathTodaysum,clickToday:$clickTodaysum)
		redirect_to '/tasks/index'
	end

end
