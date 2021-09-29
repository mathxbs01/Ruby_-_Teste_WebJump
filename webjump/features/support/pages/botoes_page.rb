class Teste

    include Capybara::DSL

    def painel_buttons 
        find('#panel_body_one') #painel Buttons
    end

    def botao_buttons
        painel_buttons.find('#btn_one').click #botão One
        painel_buttons.find('#btn_two').click #botão Two
        painel_buttons.find('#btn_link').click #botão Four
    end

    def botao_iframe
        page.within_frame(find('iframe[src="buttons.html"]')) do
            find('#btn_one').click #botão One
            find('#btn_two').click #botão Two
            find('#btn_link').click #botão Four
        end
    end
end
