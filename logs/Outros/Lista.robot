*Settings*
Documentation    Teste da SUITE



***Variables***
@{MinhaLista}      Paula       Thaís        Verônica

***Test Cases***
Testando uma Lista convencional
     [Tags]        Lista
    FOR    ${variavel}    IN      @{MinhaLista}

    Log To Console      imprime toda a lista :  ${variavel}

    END


Testando uma Lista por indice
    [Tags]        indice
    FOR  ${indice}    ${variavel}     IN ENUMERATE    @{MinhaLista}

    Log To Console     imprime indice  ${indice} : ${variavel}
    
    END 


Testando uma Lista por indice e para
    [Tags]        parar
    FOR  ${indice}    ${variavel}     IN ENUMERATE    @{MinhaLista}

    Log To Console     imprime indiceeeeee  ${indice} : ${variavel}
    exit for loop if        '${variavel}'=='Thaís'
    
    END  


Testando uma Lista por contador com limite
    [Tags]        cont
    FOR  ${variavel}     IN RANGE   0  5

    Log To Console     imprime : ${variavel}
    exit for loop if        '${variavel}'=='Thaís'
    
    END      