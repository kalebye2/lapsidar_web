require "application_system_test_case"

class ParentescosTest < ApplicationSystemTestCase
  setup do
    @parentesco = parentescos(:one)
  end

  test "visiting the index" do
    visit parentescos_url
    assert_selector "h1", text: "Parentescos"
  end

  test "creating a Parentesco" do
    visit parentescos_url
    click_on "New Parentesco"

    fill_in "Parentesco", with: @parentesco.parentesco
    click_on "Create Parentesco"

    assert_text "Parentesco was successfully created"
    click_on "Back"
  end

  test "updating a Parentesco" do
    visit parentescos_url
    click_on "Edit", match: :first

    fill_in "Parentesco", with: @parentesco.parentesco
    click_on "Update Parentesco"

    assert_text "Parentesco was successfully updated"
    click_on "Back"
  end

  test "destroying a Parentesco" do
    visit parentescos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parentesco was successfully destroyed"
  end
end
