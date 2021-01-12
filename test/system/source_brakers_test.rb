require "application_system_test_case"

class SourceBrakersTest < ApplicationSystemTestCase
  setup do
    @source_braker = source_brakers(:one)
  end

  test "visiting the index" do
    visit source_brakers_url
    assert_selector "h1", text: "Source Brakers"
  end

  test "creating a Source braker" do
    visit source_brakers_url
    click_on "New Source Braker"

    click_on "Create Source braker"

    assert_text "Source braker was successfully created"
    click_on "Back"
  end

  test "updating a Source braker" do
    visit source_brakers_url
    click_on "Edit", match: :first

    click_on "Update Source braker"

    assert_text "Source braker was successfully updated"
    click_on "Back"
  end

  test "destroying a Source braker" do
    visit source_brakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Source braker was successfully destroyed"
  end
end
