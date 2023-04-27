require 'test_helper'

class InstrucaoGrausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instrucao_grau = instrucao_graus(:one)
  end

  test "should get index" do
    get instrucao_graus_url
    assert_response :success
  end

  test "should get new" do
    get new_instrucao_grau_url
    assert_response :success
  end

  test "should create instrucao_grau" do
    assert_difference('InstrucaoGrau.count') do
      post instrucao_graus_url, params: { instrucao_grau: { grau: @instrucao_grau.grau } }
    end

    assert_redirected_to instrucao_grau_url(InstrucaoGrau.last)
  end

  test "should show instrucao_grau" do
    get instrucao_grau_url(@instrucao_grau)
    assert_response :success
  end

  test "should get edit" do
    get edit_instrucao_grau_url(@instrucao_grau)
    assert_response :success
  end

  test "should update instrucao_grau" do
    patch instrucao_grau_url(@instrucao_grau), params: { instrucao_grau: { grau: @instrucao_grau.grau } }
    assert_redirected_to instrucao_grau_url(@instrucao_grau)
  end

  test "should destroy instrucao_grau" do
    assert_difference('InstrucaoGrau.count', -1) do
      delete instrucao_grau_url(@instrucao_grau)
    end

    assert_redirected_to instrucao_graus_url
  end
end
