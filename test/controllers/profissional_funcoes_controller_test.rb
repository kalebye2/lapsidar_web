require 'test_helper'

class ProfissionalFuncoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profissional_funco = profissional_funcoes(:one)
  end

  test "should get index" do
    get profissional_funcoes_index_url
    assert_response :success
  end

  test "should get new" do
    get new_profissional_funco_url
    assert_response :success
  end

  test "should create profissional_funco" do
    assert_difference('ProfissionalFuncoes.count') do
      post profissional_funcoes_index_url, params: { profissional_funco: { funcao: @profissional_funco.funcao } }
    end

    assert_redirected_to profissional_funco_url(ProfissionalFuncoes.last)
  end

  test "should show profissional_funco" do
    get profissional_funco_url(@profissional_funco)
    assert_response :success
  end

  test "should get edit" do
    get edit_profissional_funco_url(@profissional_funco)
    assert_response :success
  end

  test "should update profissional_funco" do
    patch profissional_funco_url(@profissional_funco), params: { profissional_funco: { funcao: @profissional_funco.funcao } }
    assert_redirected_to profissional_funco_url(@profissional_funco)
  end

  test "should destroy profissional_funco" do
    assert_difference('ProfissionalFuncoes.count', -1) do
      delete profissional_funco_url(@profissional_funco)
    end

    assert_redirected_to profissional_funcoes_index_url
  end
end
