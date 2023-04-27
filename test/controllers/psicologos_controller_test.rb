require 'test_helper'

class PsicologosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psicologo = psicologos(:one)
  end

  test "should get index" do
    get psicologos_url
    assert_response :success
  end

  test "should get new" do
    get new_psicologo_url
    assert_response :success
  end

  test "should create psicologo" do
    assert_difference('Psicologo.count') do
      post psicologos_url, params: { psicologo: { bio: @psicologo.bio, chave_pix_01: @psicologo.chave_pix_01, chave_pix_02: @psicologo.chave_pix_02, civil_estado_id: @psicologo.civil_estado_id, cpf: @psicologo.cpf, crp_regiao_id: @psicologo.crp_regiao_id, crp_valor: @psicologo.crp_valor, data_colacao: @psicologo.data_colacao, data_nascimento: @psicologo.data_nascimento, email: @psicologo.email, especializacao_01: @psicologo.especializacao_01, especializacao_02: @psicologo.especializacao_02, feminino: @psicologo.feminino, fone_cod_area: @psicologo.fone_cod_area, fone_cod_pais: @psicologo.fone_cod_pais, fone_num: @psicologo.fone_num, municipio_id: @psicologo.municipio_id, nome: @psicologo.nome, sobrenome: @psicologo.sobrenome } }
    end

    assert_redirected_to psicologo_url(Psicologo.last)
  end

  test "should show psicologo" do
    get psicologo_url(@psicologo)
    assert_response :success
  end

  test "should get edit" do
    get edit_psicologo_url(@psicologo)
    assert_response :success
  end

  test "should update psicologo" do
    patch psicologo_url(@psicologo), params: { psicologo: { bio: @psicologo.bio, chave_pix_01: @psicologo.chave_pix_01, chave_pix_02: @psicologo.chave_pix_02, civil_estado_id: @psicologo.civil_estado_id, cpf: @psicologo.cpf, crp_regiao_id: @psicologo.crp_regiao_id, crp_valor: @psicologo.crp_valor, data_colacao: @psicologo.data_colacao, data_nascimento: @psicologo.data_nascimento, email: @psicologo.email, especializacao_01: @psicologo.especializacao_01, especializacao_02: @psicologo.especializacao_02, feminino: @psicologo.feminino, fone_cod_area: @psicologo.fone_cod_area, fone_cod_pais: @psicologo.fone_cod_pais, fone_num: @psicologo.fone_num, municipio_id: @psicologo.municipio_id, nome: @psicologo.nome, sobrenome: @psicologo.sobrenome } }
    assert_redirected_to psicologo_url(@psicologo)
  end

  test "should destroy psicologo" do
    assert_difference('Psicologo.count', -1) do
      delete psicologo_url(@psicologo)
    end

    assert_redirected_to psicologos_url
  end
end
