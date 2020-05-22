
module Pages
    module Login
      class Login < SitePrism::Page
        

        element :input_user, '#username'
        element :btn_continuar, '#btn-submit'
        element :input_password, '#password'

  
        def logar(user, pass)
          wait_for_input_user
          input_user.set user
          btn_continuar.click
          wait_for_input_password
          input_password.set pass
          btn_continuar.click
        end


      end
  end
end

