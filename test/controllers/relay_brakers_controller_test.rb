require 'test_helper'

class RelayBrakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relay_braker = relay_brakers(:one)
  end

  test "should get index" do
    get relay_brakers_url
    assert_response :success
  end

  test "should get new" do
    get new_relay_braker_url
    assert_response :success
  end

  test "should create relay_braker" do
    assert_difference('RelayBraker.count') do
      post relay_brakers_url, params: { relay_braker: {} }
    end

    assert_redirected_to relay_braker_url(RelayBraker.last)
  end

  test "should show relay_braker" do
    get relay_braker_url(@relay_braker)
    assert_response :success
  end

  test "should get edit" do
    get edit_relay_braker_url(@relay_braker)
    assert_response :success
  end

  test "should update relay_braker" do
    patch relay_braker_url(@relay_braker), params: { relay_braker: {} }
    assert_redirected_to relay_braker_url(@relay_braker)
  end

  test "should destroy relay_braker" do
    assert_difference('RelayBraker.count', -1) do
      delete relay_braker_url(@relay_braker)
    end

    assert_redirected_to relay_brakers_url
  end
end
