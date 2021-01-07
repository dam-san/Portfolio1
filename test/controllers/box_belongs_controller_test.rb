require 'test_helper'

class BoxBelongsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get box_belongs_new_url
    assert_response :success
  end

  test "should get create" do
    get box_belongs_create_url
    assert_response :success
  end

  test "should get edit" do
    get box_belongs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get box_belongs_destroy_url
    assert_response :success
  end

  test "should get update" do
    get box_belongs_update_url
    assert_response :success
  end

  test "should get show" do
    get box_belongs_show_url
    assert_response :success
  end

  test "should get index" do
    get box_belongs_index_url
    assert_response :success
  end

end
