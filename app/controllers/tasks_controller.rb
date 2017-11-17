class TasksController < ApplicationController

	before_action :login_check

	def login_check
		if @current_member.id == nil
			flash[:notice] = "各種課題をやる為には、ログインが必要です"
			redirect_to("/login")
		end
	end

	def index
		@id = params[:id]
		case @current_member.tasktype
			when 1 then
				redirect_to '/atmtresult/index'
			when 2 then
				redirect_to '/mathresults/index'
			when 3 then
				redirect_to '/clickresults/index'
		end
	end

	def show
	end

	def new
		@taskresult = Member.find_by(id: session[:member_id])
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end


end
