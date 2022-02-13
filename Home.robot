*Settings*
Documentation    Minha primeira suite de teste
...              Testando a página principal.


Resource    ${EXECDIR}/resources/Base.robot


Test Setup       Iniciando sessão 
Test Teardown    Finalizando sessão



*Test Cases*
Realizando login principal válido
    [Tags]    login_valido

    click        id=user-name    
    fill text    id=user-name    standard_user

    click        id=password    
    fill text    id=password    secret_sauce

    Validar rodapé

    clicar botão de Login


Realizando Login INválido
    [Tags]    login_invalido

    # New Browser    Chromium        headless=False    slowMo=00:00:02
    # New Page       ${BASE_URL}

    click        id=user-name    
    fill text    id=user-name    standard_user

    click        id=password    
    fill text    id=password    secret_sauce

    clicar botão de Login

