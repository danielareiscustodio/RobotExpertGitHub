***Settings***
Documentation       Conhecendo os dicionarios do Robot (Nativo do Python)

***Variables***
#${SIMPLES}      Daniela
#@{CARROS}       chevette        opala       camaro      mustang
&{CARRO}        nome=Chevette       hp=1500     portas=2        cor=creme
#é composto por chave e valor

***Test Cases***
Obtendo valores de um dicionário
        Log To Console      ${CARRO.hp}
