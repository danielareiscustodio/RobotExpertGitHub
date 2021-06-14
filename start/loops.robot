***Settings***
Documentation       Laços de repetição - Loops

***Variables***
@{AVENGERS}     Hulk        Thor        Cap     Ironman
@{JUSTICE}      Superman        Wonder Woman        Batman      Arrow

***Test Cases***
Meu primeiro Loop

    FOR     ${item}     IN      @{AVENGERS}
        IF      $item == 'Thor'
            Log To Console      Obtendo o vingador: ${item}
        END
    END    

Outro Loop    
    [tags]      thor

    FOR     ${item}     IN      @{AVENGERS}
        Exit for Loop If    $item == 'Ironman'
        Log To Console      Obtendo o vingador: ${item}
    END    