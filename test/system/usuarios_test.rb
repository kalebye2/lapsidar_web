require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Cpf", with: @usuario.cpf
    fill_in "Data nascimento", with: @usuario.data_nascimento
    fill_in "Email", with: @usuario.email
    fill_in "Endereco cep", with: @usuario.endereco_cep
    fill_in "Endereco complemento", with: @usuario.endereco_complemento
    fill_in "Endereco logradouro", with: @usuario.endereco_logradouro
    fill_in "Endereco numero", with: @usuario.endereco_numero
    fill_in "Estado civil", with: @usuario.estado_civil_id
    check "Feminino" if @usuario.feminino
    fill_in "Fone cod area", with: @usuario.fone_cod_area
    fill_in "Fone cod pais", with: @usuario.fone_cod_pais
    fill_in "Fone num", with: @usuario.fone_num
    fill_in "Instrucao grau", with: @usuario.instrucao_grau_id
    fill_in "Municipio", with: @usuario.municipio_id
    fill_in "Nome", with: @usuario.nome
    fill_in "Preferencia contato", with: @usuario.preferencia_contato
    fill_in "Profissao", with: @usuario.profissao
    fill_in "Sobrenome", with: @usuario.sobrenome
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @usuario.cpf
    fill_in "Data nascimento", with: @usuario.data_nascimento
    fill_in "Email", with: @usuario.email
    fill_in "Endereco cep", with: @usuario.endereco_cep
    fill_in "Endereco complemento", with: @usuario.endereco_complemento
    fill_in "Endereco logradouro", with: @usuario.endereco_logradouro
    fill_in "Endereco numero", with: @usuario.endereco_numero
    fill_in "Estado civil", with: @usuario.estado_civil_id
    check "Feminino" if @usuario.feminino
    fill_in "Fone cod area", with: @usuario.fone_cod_area
    fill_in "Fone cod pais", with: @usuario.fone_cod_pais
    fill_in "Fone num", with: @usuario.fone_num
    fill_in "Instrucao grau", with: @usuario.instrucao_grau_id
    fill_in "Municipio", with: @usuario.municipio_id
    fill_in "Nome", with: @usuario.nome
    fill_in "Preferencia contato", with: @usuario.preferencia_contato
    fill_in "Profissao", with: @usuario.profissao
    fill_in "Sobrenome", with: @usuario.sobrenome
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
