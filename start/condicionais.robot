***Settings***
Documentation       Trabalhando com condicionais


***Test Cases***
Carteira de motorista
    ${idade}=       Set Variable    18

    IF      ${idade} >= 18
        Log To Console      Você pode tirar sua CNH
    ELSE
        Log To Console      Você pode andar de bicicleta
    END

Navegador
#Código nao esta rodando. Aguardando retorno do professor
    [tags]          browser

    ${browser}=     Set Variable        BLA

    IF      '${browser}' == 'Firefox'
        Log To Console      Chamando o Firefox
    ELSE IF     '${browser}' == 'Chrome'
        Log To Console      Chamando o Chrome
    ELSE IF     '${browser}' == 'Webkit'    
        Log To Console      Chamando o Webkit
    ELSE   
        Log To Console     Navegador Incorreto.
    END    

    
