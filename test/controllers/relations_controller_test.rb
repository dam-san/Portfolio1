require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relations_index_url
    assert_response :success
  end

  test "should get new" do
    get relations_new_url
    assert_response :success
  end

  test "should get create" do
    get relations_create_url
    assert_response :success
  end

  test "should get edit" do
    get relations_edit_url
    assert_response :success
  end

  test "should get show" do
    get relations_show_url
    assert_response :success
  end

  test "should get update" do
    get relations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get relations_destroy_url
    assert_response :success
  end
end
