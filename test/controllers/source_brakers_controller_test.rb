require 'test_helper'

class SourceBrakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_braker = source_brakers(:one)
  end

  test "should get index" do
    get source_brakers_url
    assert_response :success
  end

  test "should get new" do
    get new_source_braker_url
    assert_response :success
  end

  test "should create source_braker" do
    assert_difference('SourceBraker.count') do
      post source_brakers_url, params: { source_braker: {} }
    end

    assert_redirected_to source_braker_url(SourceBraker.last)
  end

  test "should show source_braker" do
    get source_braker_url(@source_braker)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_braker_url(@source_braker)
    assert_response :success
  end

  test "should update source_braker" do
    patch source_braker_url(@source_braker), params: { source_braker: {} }
    assert_redirected_to source_braker_url(@source_braker)
  end

  test "should destroy source_braker" do
    assert_difference('SourceBraker.count', -1) do
      delete source_braker_url(@source_braker)
    end

    assert_redirected_to source_brakers_url
  end
end
