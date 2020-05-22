Quando ("acessar departamento {string} e categoria {string}") do |departamento, categoria| 
    @home.wait_for_menu_header
    @menu_header = @home.menu_header
    @menu_header.hover_use_pontos
    @menu_header.hover_categoria(departamento)
    @menu_header.clica_categoria(categoria)
end


Quando("adicionar o produto ao carrinho pelo departamento {string} e categoria {string}") do |departamento, categoria|
    step "acessar departamento '#{departamento}' e categoria '#{categoria}'"
    @home.wait_for_produtos
    @box_produto = @home.produtos.first
    @box_produto.abrir
    @produto = $pages.produto
    @link_produto_page = @produto.get_link
    @pontos_produto_page = @produto.get_pontos
    @produto.adicionar_ao_carrinho
end
    

Então("devo ver o produto no carrinho") do
  @carrinho = $pages.carrinho
  @carrinho.wait_for_produtos
  @box_produto_carrinho = @carrinho.produtos.last
  @link_produto_carrinho = @box_produto_carrinho.get_link
  @pontos_produto_carrinho = @box_produto_carrinho.get_pontos
  expect(@link_produto_carrinho).to eql @link_produto_page
  expect(@pontos_produto_carrinho).to eql @pontos_produto_page
end