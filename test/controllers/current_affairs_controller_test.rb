require 'test_helper'

class CurrentAffairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @current_affair = current_affairs(:one)
  end

  test "should get index" do
    get current_affairs_url
    assert_response :success
  end

  test "should get new" do
    get new_current_affair_url
    assert_response :success
  end

  test "should create current_affair" do
    assert_difference('CurrentAffair.count') do
      post current_affairs_url, params: { current_affair: { name: @current_affair.name, post_on: @current_affair.post_on } }
    end

    assert_redirected_to current_affair_url(CurrentAffair.last)
  end

  test "should show current_affair" do
    get current_affair_url(@current_affair)
    assert_response :success
  end

  test "should get edit" do
    get edit_current_affair_url(@current_affair)
    assert_response :success
  end

  test "should update current_affair" do
    patch current_affair_url(@current_affair), params: { current_affair: { name: @current_affair.name, post_on: @current_affair.post_on } }
    assert_redirected_to current_affair_url(@current_affair)
  end

  test "should destroy current_affair" do
    assert_difference('CurrentAffair.count', -1) do
      delete current_affair_url(@current_affair)
    end

    assert_redirected_to current_affairs_url
  end
end
