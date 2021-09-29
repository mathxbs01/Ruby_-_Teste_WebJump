#language: pt

Funcionalidade: Teste funcionalidades no site WebJump
    Sendo um entrevistados
    Quero realizar os testes no portal
    Para que eu possa provar conhecimento

    Contexto:
        Dado que acesso a página da WebJump

    @teste1
    Cenario: Teste no painel Buttons

        Quando clico nos botões do painel Buttons
        Então verifico a ausência dos mesmos no painel Buttons

    @teste2
    Cenario: Teste no painel IFrame

        Quando clico nos botões do painel IFrame
        Então verifico a ausência dos mesmos no painel IFrame
    
    @teste3
    Cenario: Teste no painel IFrame

        Quando preencho meu nome
        E clico no botão "One"
        E checo a opção "OptionThree"
        E seleciono a opção "ExampleTwo"
        Então verifico a logo da imagem Selenium Webdriver

