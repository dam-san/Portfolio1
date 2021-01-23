require 'test_helper'

class ManagesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get manages_top_url
    assert_response :success
  end

  test "should get index" do
    get manages_index_url
    assert_response :success
  end

  test "should get user_manage" do
    get manages_user_manage_url
    assert_response :success
  end
end
