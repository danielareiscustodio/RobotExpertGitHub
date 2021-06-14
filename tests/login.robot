***Settings***
Documentation       Suite de Testes de Login do Administrador

#colocando a biblioteca library ele pega tudo que iver dentro ja
Library     Browser

***Test Cases***
Login do Administrador
    #faz com que abra o browser. Se a evidencia vier errado, uma das soluções, mesmo nao muito boa
    #é so trocar o False para True que significa rodar em headless, ou seja o browser nao abre
    #a aplicação fica rodando em backend
    New Browser     chromium    True
    New Page        https://bodytest-web-daniela.herokuapp.com/
    
    Fill Text       css=input[name=email]       admin@bodytest.com
    Fill Text       css=input[name=password]    pwd123
    
    Click           text=Entrar

    #comando para confirmar que o texto esta realmente aparecendo na tela
    Get Text        css=aside strong    should be       Administrador

    #para tirar um print 
    Take Screenshot    

Senha Incorreta
    #para rodar somente esse cenario, colocar tag. Comando: robot -d .\logs -i incorreta tests\login.robot
    [tags]          incorreta
    New Browser     chromium    True
    New Page        https://bodytest-web-daniela.herokuapp.com/

    Fill Text       css=input[name=email]       admin@bodytest.com
    Fill Text       css=input[name=password]    pwd1234

    Click           text=Entrar

    # #esperar ate 5 segundos o toast aparecer na tela para validar a existencia
    # #e depois verificar o texto que esta retornando
    # Wait For Elements State     css=.Toastify__toast-body   visible     5

    # #o uso do ponto, é uma referencia de que esta sendo buscado pela classe.
    # Get Text        css=.Toastify__toast-body   should be   Usuário ou senha inválido

    #estrategia para melhorar o codigo que esta comentado acima em 1 linha
    Wait For Elements State     css=.Toastify__toast-body >> text=Usuário ou senha inválido  visible     5

    Take Screenshot
     
Email Invalido
    #para rodar somente esse cenario, colocar tag. Comando: robot -d .\logs -i userincorreto tests\login.robot
    [tags]          emailinvalido
    New Browser     chromium    True
    New Page        https://bodytest-web-daniela.herokuapp.com/

    Fill Text       css=input[name=email]       tst$bodytest.com
    Fill Text       css=input[name=password]    pwd1234

    Click           text=Entrar

    Wait For Elements State     css=form span >> text=Informe um e-mail válido  visible     5

    Take Screenshot

