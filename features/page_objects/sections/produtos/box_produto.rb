
module Sections
    module Produtos
      class BoxProduto < SitePrism::Section

        element :imagem_produto, 'img'
    

        def abrir
            imagem_produto.click
        end
        
         
        
      end
  end
end