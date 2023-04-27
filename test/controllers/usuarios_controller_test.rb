require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { cpf: @usuario.cpf, data_nascimento: @usuario.data_nascimento, email: @usuario.email, endereco_cep: @usuario.endereco_cep, endereco_complemento: @usuario.endereco_complemento, endereco_logradouro: @usuario.endereco_logradouro, endereco_numero: @usuario.endereco_numero, estado_civil_id: @usuario.estado_civil_id, feminino: @usuario.feminino, fone_cod_area: @usuario.fone_cod_area, fone_cod_pais: @usuario.fone_cod_pais, fone_num: @usuario.fone_num, instrucao_grau_id: @usuario.instrucao_grau_id, municipio_id: @usuario.municipio_id, nome: @usuario.nome, preferencia_contato: @usuario.preferencia_contato, profissao: @usuario.profissao, sobrenome: @usuario.sobrenome } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { cpf: @usuario.cpf, data_nascimento: @usuario.data_nascimento, email: @usuario.email, endereco_cep: @usuario.endereco_cep, endereco_complemento: @usuario.endereco_complemento, endereco_logradouro: @usuario.endereco_logradouro, endereco_numero: @usuario.endereco_numero, estado_civil_id: @usuario.estado_civil_id, feminino: @usuario.feminino, fone_cod_area: @usuario.fone_cod_area, fone_cod_pais: @usuario.fone_cod_pais, fone_num: @usuario.fone_num, instrucao_grau_id: @usuario.instrucao_grau_id, municipio_id: @usuario.municipio_id, nome: @usuario.nome, preferencia_contato: @usuario.preferencia_contato, profissao: @usuario.profissao, sobrenome: @usuario.sobrenome } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
