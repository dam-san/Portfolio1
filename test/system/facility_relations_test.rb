require "application_system_test_case"

class FacilityRelationsTest < ApplicationSystemTestCase
  setup do
    @facility_relation = facility_relations(:one)
  end

  test "visiting the index" do
    visit facility_relations_url
    assert_selector "h1", text: "Facility Relations"
  end

  test "creating a Facility relation" do
    visit facility_relations_url
    click_on "New Facility Relation"

    click_on "Create Facility relation"

    assert_text "Facility relation was successfully created"
    click_on "Back"
  end

  test "updating a Facility relation" do
    visit facility_relations_url
    click_on "Edit", match: :first

    click_on "Update Facility relation"

    assert_text "Facility relation was successfully updated"
    click_on "Back"
  end

  test "destroying a Facility relation" do
    visit facility_relations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facility relation was successfully destroyed"
  end
end
