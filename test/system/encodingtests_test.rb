require "application_system_test_case"

class EncodingtestsTest < ApplicationSystemTestCase
  setup do
    @encodingtest = encodingtests(:one)
  end

  test "visiting the index" do
    visit encodingtests_url
    assert_selector "h1", text: "Encodingtests"
  end

  test "creating a Encodingtest" do
    visit encodingtests_url
    click_on "New Encodingtest"

    click_on "Create Encodingtest"

    assert_text "Encodingtest was successfully created"
    click_on "Back"
  end

  test "updating a Encodingtest" do
    visit encodingtests_url
    click_on "Edit", match: :first

    click_on "Update Encodingtest"

    assert_text "Encodingtest was successfully updated"
    click_on "Back"
  end

  test "destroying a Encodingtest" do
    visit encodingtests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Encodingtest was successfully destroyed"
  end
end
