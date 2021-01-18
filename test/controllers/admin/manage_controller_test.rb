require 'test_helper'

class Admin::ManageControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get admin_manage_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_manage_destroy_url
    assert_response :success
  end

end
