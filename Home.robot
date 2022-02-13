*Settings*
Documentation    Minha primeira suite de teste
...              Testando a página principal.


Resource    ${EXECDIR}/resources/Base.robot


Test Setup       Iniciando sessão 
Test Teardown    Finalizando sessão



*Test Cases*
Visualizar a página principal
    Validar Título da página
    Validação do formulário de autenticação

Logar com usuário válido e válidar página principal
     [Tags]             usr_ok
    ${user}            factory_usuariook
    Realizando login            ${user}    
    Validar Título da página
    Validar menu
    Lista de produtos           PRODUCTS 
    Validar rodapé
    Realizar Logout  
    


