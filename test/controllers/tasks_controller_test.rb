require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_index_url
    assert_response :success
  end

  test "should get atmt" do
    get tasks_atmt_url
    assert_response :success
  end

  test "should get math" do
    get tasks_math_url
    assert_response :success
  end

  test "should get click" do
    get tasks_click_url
    assert_response :success
  end

end
