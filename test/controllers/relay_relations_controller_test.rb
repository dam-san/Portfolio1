require 'test_helper'

class RelayRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relay_relation = relay_relations(:one)
  end

  test "should get index" do
    get relay_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_relay_relation_url
    assert_response :success
  end

  test "should create relay_relation" do
    assert_difference('RelayRelation.count') do
      post relay_relations_url, params: { relay_relation: {} }
    end

    assert_redirected_to relay_relation_url(RelayRelation.last)
  end

  test "should show relay_relation" do
    get relay_relation_url(@relay_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_relay_relation_url(@relay_relation)
    assert_response :success
  end

  test "should update relay_relation" do
    patch relay_relation_url(@relay_relation), params: { relay_relation: {} }
    assert_redirected_to relay_relation_url(@relay_relation)
  end

  test "should destroy relay_relation" do
    assert_difference('RelayRelation.count', -1) do
      delete relay_relation_url(@relay_relation)
    end

    assert_redirected_to relay_relations_url
  end
end
