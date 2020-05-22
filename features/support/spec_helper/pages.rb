
Dir[File.join(File.dirname(__FILE__), 'page_objects/pages/*.rb')]
  .sort.each { |file| require file }

module Pages
    class DesktopPages
      class << self

        def home
          Pages::Home::Home.new
        end

        def login
          Pages::Login::Login.new
        end

        def carrinho
          Pages::Carrinho::Carrinho.new
        end

        def produto
          Pages::Produto::Produto.new
        end

      end
    end
end

