require 'test_helper'

class ResponsavelUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsavel_usuario = responsavel_usuarios(:one)
  end

  test "should get index" do
    get responsavel_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_responsavel_usuario_url
    assert_response :success
  end

  test "should create responsavel_usuario" do
    assert_difference('ResponsavelUsuario.count') do
      post responsavel_usuarios_url, params: { responsavel_usuario: { parentesco_id: @responsavel_usuario.parentesco_id, responsavel_id: @responsavel_usuario.responsavel_id, usuario_id: @responsavel_usuario.usuario_id } }
    end

    assert_redirected_to responsavel_usuario_url(ResponsavelUsuario.last)
  end

  test "should show responsavel_usuario" do
    get responsavel_usuario_url(@responsavel_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsavel_usuario_url(@responsavel_usuario)
    assert_response :success
  end

  test "should update responsavel_usuario" do
    patch responsavel_usuario_url(@responsavel_usuario), params: { responsavel_usuario: { parentesco_id: @responsavel_usuario.parentesco_id, responsavel_id: @responsavel_usuario.responsavel_id, usuario_id: @responsavel_usuario.usuario_id } }
    assert_redirected_to responsavel_usuario_url(@responsavel_usuario)
  end

  test "should destroy responsavel_usuario" do
    assert_difference('ResponsavelUsuario.count', -1) do
      delete responsavel_usuario_url(@responsavel_usuario)
    end

    assert_redirected_to responsavel_usuarios_url
  end
end
