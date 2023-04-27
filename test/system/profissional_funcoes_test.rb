require "application_system_test_case"

class ProfissionalFuncoesTest < ApplicationSystemTestCase
  setup do
    @profissional_funco = profissional_funcoes(:one)
  end

  test "visiting the index" do
    visit profissional_funcoes_url
    assert_selector "h1", text: "Profissional Funcoes"
  end

  test "creating a Profissional funcoes" do
    visit profissional_funcoes_url
    click_on "New Profissional Funcoes"

    fill_in "Funcao", with: @profissional_funco.funcao
    click_on "Create Profissional funcoes"

    assert_text "Profissional funcoes was successfully created"
    click_on "Back"
  end

  test "updating a Profissional funcoes" do
    visit profissional_funcoes_url
    click_on "Edit", match: :first

    fill_in "Funcao", with: @profissional_funco.funcao
    click_on "Update Profissional funcoes"

    assert_text "Profissional funcoes was successfully updated"
    click_on "Back"
  end

  test "destroying a Profissional funcoes" do
    visit profissional_funcoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profissional funcoes was successfully destroyed"
  end
end
