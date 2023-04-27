require "application_system_test_case"

class ProfissionaisTest < ApplicationSystemTestCase
  setup do
    @profissionai = profissionais(:one)
  end

  test "visiting the index" do
    visit profissionais_url
    assert_selector "h1", text: "Profissionais"
  end

  test "creating a Profissionai" do
    visit profissionais_url
    click_on "New Profissionai"

    fill_in "Bio", with: @profissionai.bio
    fill_in "Civil estado", with: @profissionai.civil_estado_id
    fill_in "Cpf", with: @profissionai.cpf
    fill_in "Data nascimento", with: @profissionai.data_nascimento
    fill_in "Email", with: @profissionai.email
    fill_in "Endereco cep", with: @profissionai.endereco_cep
    fill_in "Endereco complemento", with: @profissionai.endereco_complemento
    fill_in "Endereco logradouro", with: @profissionai.endereco_logradouro
    fill_in "Endereco numero", with: @profissionai.endereco_numero
    check "Feminino" if @profissionai.feminino
    fill_in "Fone cod area", with: @profissionai.fone_cod_area
    fill_in "Fone cod pais", with: @profissionai.fone_cod_pais
    fill_in "Fone num", with: @profissionai.fone_num
    fill_in "Funcao", with: @profissionai.funcao_id
    fill_in "Instrucao grau", with: @profissionai.instrucao_grau_id
    fill_in "Municipio", with: @profissionai.municipio_id
    fill_in "Nome", with: @profissionai.nome
    fill_in "Salario", with: @profissionai.salario
    fill_in "Sobrenome", with: @profissionai.sobrenome
    click_on "Create Profissionai"

    assert_text "Profissionai was successfully created"
    click_on "Back"
  end

  test "updating a Profissionai" do
    visit profissionais_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @profissionai.bio
    fill_in "Civil estado", with: @profissionai.civil_estado_id
    fill_in "Cpf", with: @profissionai.cpf
    fill_in "Data nascimento", with: @profissionai.data_nascimento
    fill_in "Email", with: @profissionai.email
    fill_in "Endereco cep", with: @profissionai.endereco_cep
    fill_in "Endereco complemento", with: @profissionai.endereco_complemento
    fill_in "Endereco logradouro", with: @profissionai.endereco_logradouro
    fill_in "Endereco numero", with: @profissionai.endereco_numero
    check "Feminino" if @profissionai.feminino
    fill_in "Fone cod area", with: @profissionai.fone_cod_area
    fill_in "Fone cod pais", with: @profissionai.fone_cod_pais
    fill_in "Fone num", with: @profissionai.fone_num
    fill_in "Funcao", with: @profissionai.funcao_id
    fill_in "Instrucao grau", with: @profissionai.instrucao_grau_id
    fill_in "Municipio", with: @profissionai.municipio_id
    fill_in "Nome", with: @profissionai.nome
    fill_in "Salario", with: @profissionai.salario
    fill_in "Sobrenome", with: @profissionai.sobrenome
    click_on "Update Profissionai"

    assert_text "Profissionai was successfully updated"
    click_on "Back"
  end

  test "destroying a Profissionai" do
    visit profissionais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profissionai was successfully destroyed"
  end
end
