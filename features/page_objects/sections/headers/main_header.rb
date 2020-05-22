module Sections
  module Headers
    class MainHeader < SitePrism::Section
  
  
      element :btn_faca_seu_login, '#span-controlText'
      element :btn_entrar, '#a-buttonLogin' 
          
  
        def abrir_login
          wait_for_btn_faca_seu_login
          btn_faca_seu_login.hover
          btn_entrar.click
        end

    end
  end
end
