
module Sections
    module Produtos
      class BoxProdutoCarrinho < SitePrism::Section

        
        element :link, 'div[class="cart-list__prodinfo"] a'
        element :pontos, 'span[id^="total-"]'

        def get_link
            wait_for_link
            link[:href].split('?').first
        end

        def get_pontos
            wait_for_pontos
            pontos.text.split(' ').first
        end

        
      end
  end
end