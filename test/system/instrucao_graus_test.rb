require "application_system_test_case"

class InstrucaoGrausTest < ApplicationSystemTestCase
  setup do
    @instrucao_grau = instrucao_graus(:one)
  end

  test "visiting the index" do
    visit instrucao_graus_url
    assert_selector "h1", text: "Instrucao Graus"
  end

  test "creating a Instrucao grau" do
    visit instrucao_graus_url
    click_on "New Instrucao Grau"

    fill_in "Grau", with: @instrucao_grau.grau
    click_on "Create Instrucao grau"

    assert_text "Instrucao grau was successfully created"
    click_on "Back"
  end

  test "updating a Instrucao grau" do
    visit instrucao_graus_url
    click_on "Edit", match: :first

    fill_in "Grau", with: @instrucao_grau.grau
    click_on "Update Instrucao grau"

    assert_text "Instrucao grau was successfully updated"
    click_on "Back"
  end

  test "destroying a Instrucao grau" do
    visit instrucao_graus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instrucao grau was successfully destroyed"
  end
end
