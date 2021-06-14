***Settings***
Documentation       Exemplos de variaveis

***Variables***
${APELIDO}      Reis


***Test Cases***
Exemplo 01
    ${nome}     Set Variable        Daniela
    Set Suite Variable      ${nome}

    Log To Console          ${nome}

    Log To Console          ${APELIDO}

Exemplo 02
    Log To Console          ${nome}
    Log To Console          ${APELIDO}
