require "application_system_test_case"

class RelayBrakersTest < ApplicationSystemTestCase
  setup do
    @relay_braker = relay_brakers(:one)
  end

  test "visiting the index" do
    visit relay_brakers_url
    assert_selector "h1", text: "Relay Brakers"
  end

  test "creating a Relay braker" do
    visit relay_brakers_url
    click_on "New Relay Braker"

    click_on "Create Relay braker"

    assert_text "Relay braker was successfully created"
    click_on "Back"
  end

  test "updating a Relay braker" do
    visit relay_brakers_url
    click_on "Edit", match: :first

    click_on "Update Relay braker"

    assert_text "Relay braker was successfully updated"
    click_on "Back"
  end

  test "destroying a Relay braker" do
    visit relay_brakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relay braker was successfully destroyed"
  end
end
