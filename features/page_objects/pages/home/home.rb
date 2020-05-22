require_relative '../../sections/headers/main_header.rb'
require_relative '../../sections/headers/menu_header.rb'
require_relative '../../sections/produtos/box_produto.rb'

module Pages
    module Home
      class Home < SitePrism::Page

        set_url '/'

        section :main_header, Sections::Headers::MainHeader, '#cc-custom-header-points-header'
        section :menu_header, Sections::Headers::MenuHeader, '#div-menu'
        sections :produtos, Sections::Produtos::BoxProduto, 'div.product-box'
        
      end
  end
end

