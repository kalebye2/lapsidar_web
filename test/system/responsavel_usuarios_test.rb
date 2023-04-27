require "application_system_test_case"

class ResponsavelUsuariosTest < ApplicationSystemTestCase
  setup do
    @responsavel_usuario = responsavel_usuarios(:one)
  end

  test "visiting the index" do
    visit responsavel_usuarios_url
    assert_selector "h1", text: "Responsavel Usuarios"
  end

  test "creating a Responsavel usuario" do
    visit responsavel_usuarios_url
    click_on "New Responsavel Usuario"

    fill_in "Parentesco", with: @responsavel_usuario.parentesco_id
    fill_in "Responsavel", with: @responsavel_usuario.responsavel_id
    fill_in "Usuario", with: @responsavel_usuario.usuario_id
    click_on "Create Responsavel usuario"

    assert_text "Responsavel usuario was successfully created"
    click_on "Back"
  end

  test "updating a Responsavel usuario" do
    visit responsavel_usuarios_url
    click_on "Edit", match: :first

    fill_in "Parentesco", with: @responsavel_usuario.parentesco_id
    fill_in "Responsavel", with: @responsavel_usuario.responsavel_id
    fill_in "Usuario", with: @responsavel_usuario.usuario_id
    click_on "Update Responsavel usuario"

    assert_text "Responsavel usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsavel usuario" do
    visit responsavel_usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsavel usuario was successfully destroyed"
  end
end
