require "application_system_test_case"

class RelaysTest < ApplicationSystemTestCase
  setup do
    @relay = relays(:one)
  end

  test "visiting the index" do
    visit relays_url
    assert_selector "h1", text: "Relays"
  end

  test "creating a Relay" do
    visit relays_url
    click_on "New Relay"

    click_on "Create Relay"

    assert_text "Relay was successfully created"
    click_on "Back"
  end

  test "updating a Relay" do
    visit relays_url
    click_on "Edit", match: :first

    click_on "Update Relay"

    assert_text "Relay was successfully updated"
    click_on "Back"
  end

  test "destroying a Relay" do
    visit relays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relay was successfully destroyed"
  end
end
