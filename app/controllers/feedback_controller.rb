class FeedbackController < ApplicationController
  def show
    @atmtresults = Atmtresult.where(created_at: 0.day.ago.all_day)
    @mathresults = Mathresult.where(member_id: @current_member.id)
    @clickresults = Clickresult.where(member_id: @current_member.id)
  end
end