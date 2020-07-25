require 'test_helper'

class TiposProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_produto = tipos_produtos(:one)
  end

  test "should get index" do
    get tipos_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_produto_url
    assert_response :success
  end

  test "should create tipos_produto" do
    assert_difference('TiposProduto.count') do
      post tipos_produtos_url, params: { tipos_produto: { descricao: @tipos_produto.descricao } }
    end

    assert_redirected_to tipos_produto_url(TiposProduto.last)
  end

  test "should show tipos_produto" do
    get tipos_produto_url(@tipos_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_produto_url(@tipos_produto)
    assert_response :success
  end

  test "should update tipos_produto" do
    patch tipos_produto_url(@tipos_produto), params: { tipos_produto: { descricao: @tipos_produto.descricao } }
    assert_redirected_to tipos_produto_url(@tipos_produto)
  end

  test "should destroy tipos_produto" do
    assert_difference('TiposProduto.count', -1) do
      delete tipos_produto_url(@tipos_produto)
    end

    assert_redirected_to tipos_produtos_url
  end
end
