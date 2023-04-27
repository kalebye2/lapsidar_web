require "application_system_test_case"

class PsicologosTest < ApplicationSystemTestCase
  setup do
    @psicologo = psicologos(:one)
  end

  test "visiting the index" do
    visit psicologos_url
    assert_selector "h1", text: "Psicologos"
  end

  test "creating a Psicologo" do
    visit psicologos_url
    click_on "New Psicologo"

    fill_in "Bio", with: @psicologo.bio
    fill_in "Chave pix 01", with: @psicologo.chave_pix_01
    fill_in "Chave pix 02", with: @psicologo.chave_pix_02
    fill_in "Civil estado", with: @psicologo.civil_estado_id
    fill_in "Cpf", with: @psicologo.cpf
    fill_in "Crp regiao", with: @psicologo.crp_regiao_id
    fill_in "Crp valor", with: @psicologo.crp_valor
    fill_in "Data colacao", with: @psicologo.data_colacao
    fill_in "Data nascimento", with: @psicologo.data_nascimento
    fill_in "Email", with: @psicologo.email
    fill_in "Especializacao 01", with: @psicologo.especializacao_01
    fill_in "Especializacao 02", with: @psicologo.especializacao_02
    fill_in "Feminino", with: @psicologo.feminino
    fill_in "Fone cod area", with: @psicologo.fone_cod_area
    fill_in "Fone cod pais", with: @psicologo.fone_cod_pais
    fill_in "Fone num", with: @psicologo.fone_num
    fill_in "Municipio", with: @psicologo.municipio_id
    fill_in "Nome", with: @psicologo.nome
    fill_in "Sobrenome", with: @psicologo.sobrenome
    click_on "Create Psicologo"

    assert_text "Psicologo was successfully created"
    click_on "Back"
  end

  test "updating a Psicologo" do
    visit psicologos_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @psicologo.bio
    fill_in "Chave pix 01", with: @psicologo.chave_pix_01
    fill_in "Chave pix 02", with: @psicologo.chave_pix_02
    fill_in "Civil estado", with: @psicologo.civil_estado_id
    fill_in "Cpf", with: @psicologo.cpf
    fill_in "Crp regiao", with: @psicologo.crp_regiao_id
    fill_in "Crp valor", with: @psicologo.crp_valor
    fill_in "Data colacao", with: @psicologo.data_colacao
    fill_in "Data nascimento", with: @psicologo.data_nascimento
    fill_in "Email", with: @psicologo.email
    fill_in "Especializacao 01", with: @psicologo.especializacao_01
    fill_in "Especializacao 02", with: @psicologo.especializacao_02
    fill_in "Feminino", with: @psicologo.feminino
    fill_in "Fone cod area", with: @psicologo.fone_cod_area
    fill_in "Fone cod pais", with: @psicologo.fone_cod_pais
    fill_in "Fone num", with: @psicologo.fone_num
    fill_in "Municipio", with: @psicologo.municipio_id
    fill_in "Nome", with: @psicologo.nome
    fill_in "Sobrenome", with: @psicologo.sobrenome
    click_on "Update Psicologo"

    assert_text "Psicologo was successfully updated"
    click_on "Back"
  end

  test "destroying a Psicologo" do
    visit psicologos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Psicologo was successfully destroyed"
  end
end
