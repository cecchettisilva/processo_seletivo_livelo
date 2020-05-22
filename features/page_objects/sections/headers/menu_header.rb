module Sections
    module Headers
      class MenuHeader < SitePrism::Section
        
          element :btn_use_seus_pontos, '#span-usePontos'  
          elements :categorias, 'li[id^="li-"] a span'

          def hover_use_pontos
            btn_use_seus_pontos.hover
          end

          def clica_categoria(categoria)
            wait_for_categorias
            categorias&.find { |c| c.text.match(/#{categoria}/i) }&.click
          end

          def hover_categoria(categoria)
            wait_for_categorias
            categorias&.find { |c| c.text.match(/#{categoria}/i) }&.hover
          end
          
      end
    end
  end