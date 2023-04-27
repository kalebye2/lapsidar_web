require "application_system_test_case"

class CivilEstadosTest < ApplicationSystemTestCase
  setup do
    @civil_estado = civil_estados(:one)
  end

  test "visiting the index" do
    visit civil_estados_url
    assert_selector "h1", text: "Civil Estados"
  end

  test "creating a Civil estado" do
    visit civil_estados_url
    click_on "New Civil Estado"

    fill_in "Estado", with: @civil_estado.estado
    click_on "Create Civil estado"

    assert_text "Civil estado was successfully created"
    click_on "Back"
  end

  test "updating a Civil estado" do
    visit civil_estados_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @civil_estado.estado
    click_on "Update Civil estado"

    assert_text "Civil estado was successfully updated"
    click_on "Back"
  end

  test "destroying a Civil estado" do
    visit civil_estados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Civil estado was successfully destroyed"
  end
end
