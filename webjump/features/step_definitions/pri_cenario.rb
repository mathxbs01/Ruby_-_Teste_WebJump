# Para manutenção dos códigos com a tag @botoes
# deve se acessar o arquivo botao_page.rb

Dado('que acesso a página da WebJump') do
    visit '/'
end
  
Quando('clico nos botões do painel Buttons') do
    @botoes.botao_buttons
end
  
Então('verifico a ausência dos mesmos no painel Buttons') do
    painel_buttons = @botoes.painel_buttons
    expect(painel_buttons).to have_button('One', visible: false)
    expect(painel_buttons).to have_button('Two', visible: false)
    expect(painel_buttons).to have_button('Four', visible: false)
end

Quando('clico nos botões do painel IFrame') do
    @botoes.botao_iframe
end
  
Então('verifico a ausência dos mesmos no painel IFrame') do
    #realizando busca dentro do iframe
    page.within_frame(find('iframe[src="buttons.html"]')) do
        expect(page).to have_button('One', visible: false)
        expect(page).to have_button('Two', visible: false)
        expect(page).to have_button('Four', visible: false)
    end
end

Quando('preencho meu nome') do
    find('#first_name').set "Matheus" #Preenchendo campo com nome Matheus
end
  
Quando('clico no botão {string}') do |botao|
    click_button botao #clicando no botão One
end
  
Quando('checo a opção {string}') do |caixa|
    check(caixa) #checando checkbox
end
  
Quando('seleciono a opção {string}') do |opcao|
    drop = find('#select_box') #procurando a lista
    drop.find('option', text: opcao).select_option #selecionando item da lista com nome ExempleTwo
end
  
Então('verifico a logo da imagem Selenium Webdriver') do
    img = find('img[alt="selenium"]')
    expect(img[:src]).to include 'http://techtutorr.com/wp-content/uploads/2014/04/selenium-webdriver-online-courses-techtutorr.jpg' #verificando pela URL da imagem
end
