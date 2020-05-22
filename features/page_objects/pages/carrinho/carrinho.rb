require_relative '../../sections/produtos/box_produto_carrinho.rb'

module Pages
    module Carrinho
      class Carrinho < SitePrism::Page
        

          element :nome_produto, 'div[class="cart-list__prodinfo"] a'
          element :qtd_pontos, 'div[class="cart-list__prodvalue"] span[class*="cart-list__value"]'

          sections :produtos, Sections::Produtos::BoxProdutoCarrinho,'div[id^="cc-cart-item"]'
      

          def adicionar_ao_carrinho
            adicionar_ao_carrinho.click
          end


      end
  end
end

