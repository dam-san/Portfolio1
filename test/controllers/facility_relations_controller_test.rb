require 'test_helper'

class FacilityRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facility_relation = facility_relations(:one)
  end

  test "should get index" do
    get facility_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_facility_relation_url
    assert_response :success
  end

  test "should create facility_relation" do
    assert_difference('FacilityRelation.count') do
      post facility_relations_url, params: { facility_relation: {  } }
    end

    assert_redirected_to facility_relation_url(FacilityRelation.last)
  end

  test "should show facility_relation" do
    get facility_relation_url(@facility_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_facility_relation_url(@facility_relation)
    assert_response :success
  end

  test "should update facility_relation" do
    patch facility_relation_url(@facility_relation), params: { facility_relation: {  } }
    assert_redirected_to facility_relation_url(@facility_relation)
  end

  test "should destroy facility_relation" do
    assert_difference('FacilityRelation.count', -1) do
      delete facility_relation_url(@facility_relation)
    end

    assert_redirected_to facility_relations_url
  end
end
