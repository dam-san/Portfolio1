require "application_system_test_case"

class RelayRelationsTest < ApplicationSystemTestCase
  setup do
    @relay_relation = relay_relations(:one)
  end

  test "visiting the index" do
    visit relay_relations_url
    assert_selector "h1", text: "Relay Relations"
  end

  test "creating a Relay relation" do
    visit relay_relations_url
    click_on "New Relay Relation"

    click_on "Create Relay relation"

    assert_text "Relay relation was successfully created"
    click_on "Back"
  end

  test "updating a Relay relation" do
    visit relay_relations_url
    click_on "Edit", match: :first

    click_on "Update Relay relation"

    assert_text "Relay relation was successfully updated"
    click_on "Back"
  end

  test "destroying a Relay relation" do
    visit relay_relations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relay relation was successfully destroyed"
  end
end
