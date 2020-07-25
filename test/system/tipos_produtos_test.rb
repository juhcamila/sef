require "application_system_test_case"

class TiposProdutosTest < ApplicationSystemTestCase
  setup do
    @tipos_produto = tipos_produtos(:one)
  end

  test "visiting the index" do
    visit tipos_produtos_url
    assert_selector "h1", text: "Tipos Produtos"
  end

  test "creating a Tipos produto" do
    visit tipos_produtos_url
    click_on "New Tipos Produto"

    fill_in "Descricao", with: @tipos_produto.descricao
    click_on "Create Tipos produto"

    assert_text "Tipos produto was successfully created"
    click_on "Back"
  end

  test "updating a Tipos produto" do
    visit tipos_produtos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tipos_produto.descricao
    click_on "Update Tipos produto"

    assert_text "Tipos produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipos produto" do
    visit tipos_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipos produto was successfully destroyed"
  end
end
