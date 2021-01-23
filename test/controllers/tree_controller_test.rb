require 'test_helper'

class TreeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tree_show_url
    assert_response :success
  end

  test "should get index" do
    get tree_index_url
    assert_response :success
  end
end
