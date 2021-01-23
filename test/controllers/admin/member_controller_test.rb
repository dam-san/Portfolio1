require 'test_helper'

class Admin::MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get admin_member_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_member_destroy_url
    assert_response :success
  end
end
