***Settings***
Documentation       Conhecendo as Listas

#LIBRARY QUE SERVE PARA IMPRIMIR LISTA
Library     Collections 

***Variables***
@{AVENGERS}     Hulk        Thor        Cap     Ironman
@{JUSTICE}      Superman        Wonder Woman        Batman      Arrow

***Test Cases***
Minha Lista
 #   ${index}            Get Index From List     ${AVENGERS}     Ironman

#    Log To Console      ${index}
#    Set List Value      ${AVENGERS}     ${index}        Homem de Ferro

#    ${index_thor}       Get Index From List     ${AVENGERS}     Thor
#    Remove From List    ${AVENGERS}     ${index_thor}     
#    Log To Console      ${AVENGERS}

    ${crossover}        Combine Lists       ${AVENGERS}     ${JUSTICE}
    Log To Console      ${crossover[5]}      