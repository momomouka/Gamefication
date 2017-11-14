class FeedbackController < ApplicationController
  def show
    @atmtresults = Atmtresult.where(created_at: @current_member.id)
    @mathresults = Mathresult.where(member_id: @current_member.id)
    @clickresults = Clickresult.where(member_id: @current_member.id)
  end
end