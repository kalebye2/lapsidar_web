require 'test_helper'

class ProfissionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profissionai = profissionais(:one)
  end

  test "should get index" do
    get profissionais_url
    assert_response :success
  end

  test "should get new" do
    get new_profissionai_url
    assert_response :success
  end

  test "should create profissionai" do
    assert_difference('Profissionai.count') do
      post profissionais_url, params: { profissionai: { bio: @profissionai.bio, civil_estado_id: @profissionai.civil_estado_id, cpf: @profissionai.cpf, data_nascimento: @profissionai.data_nascimento, email: @profissionai.email, endereco_cep: @profissionai.endereco_cep, endereco_complemento: @profissionai.endereco_complemento, endereco_logradouro: @profissionai.endereco_logradouro, endereco_numero: @profissionai.endereco_numero, feminino: @profissionai.feminino, fone_cod_area: @profissionai.fone_cod_area, fone_cod_pais: @profissionai.fone_cod_pais, fone_num: @profissionai.fone_num, funcao_id: @profissionai.funcao_id, instrucao_grau_id: @profissionai.instrucao_grau_id, municipio_id: @profissionai.municipio_id, nome: @profissionai.nome, salario: @profissionai.salario, sobrenome: @profissionai.sobrenome } }
    end

    assert_redirected_to profissionai_url(Profissionai.last)
  end

  test "should show profissionai" do
    get profissionai_url(@profissionai)
    assert_response :success
  end

  test "should get edit" do
    get edit_profissionai_url(@profissionai)
    assert_response :success
  end

  test "should update profissionai" do
    patch profissionai_url(@profissionai), params: { profissionai: { bio: @profissionai.bio, civil_estado_id: @profissionai.civil_estado_id, cpf: @profissionai.cpf, data_nascimento: @profissionai.data_nascimento, email: @profissionai.email, endereco_cep: @profissionai.endereco_cep, endereco_complemento: @profissionai.endereco_complemento, endereco_logradouro: @profissionai.endereco_logradouro, endereco_numero: @profissionai.endereco_numero, feminino: @profissionai.feminino, fone_cod_area: @profissionai.fone_cod_area, fone_cod_pais: @profissionai.fone_cod_pais, fone_num: @profissionai.fone_num, funcao_id: @profissionai.funcao_id, instrucao_grau_id: @profissionai.instrucao_grau_id, municipio_id: @profissionai.municipio_id, nome: @profissionai.nome, salario: @profissionai.salario, sobrenome: @profissionai.sobrenome } }
    assert_redirected_to profissionai_url(@profissionai)
  end

  test "should destroy profissionai" do
    assert_difference('Profissionai.count', -1) do
      delete profissionai_url(@profissionai)
    end

    assert_redirected_to profissionais_url
  end
end
