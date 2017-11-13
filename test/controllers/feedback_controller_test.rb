require 'test_helper'

class FeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get feedback_show_url
    assert_response :success
  end

end
