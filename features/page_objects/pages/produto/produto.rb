
module Pages
    module Produto
      class Produto < SitePrism::Page


          element :pontos, '.container-price-points span[data-bind*="$data.salePrice()"]'
          element :btn_add_carrinho, '#cc-prodDetails-addToCart'

          def get_link
            current_url
          end

          def get_pontos
            wait_for_pontos
            pontos.text
          end

          def adicionar_ao_carrinho
            wait_for_btn_add_carrinho
            btn_add_carrinho.click
          end


      end
  end
end
