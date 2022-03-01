*Settings*
Documentation    Minha primeira suíte de teste do site https://www.saucedemo.com/ kkkkkkkkkk
...              Testando a primeira página.
...         https://www.saucedemo.com/


Resource    ${EXECDIR}/resources/Base.robot


Test Setup       Iniciando sessão 
Test Teardown    Finalizando sessão



*Test Cases*
Realizar Login INVÁLIDO
    [Documentation]    CT para realização de login com dados válidos
    [Tags]             usr_invalido
    ${user}            factory_usuarioFaker

    Realizando login            ${user}
    Validar mensagem de erro    Epic sadface: Username and password do not match any user in this service

Realizar Login BLOQUEADO
    [Documentation]    CT para realização de login com usuário bloqueado
    [Tags]             usr_bloq
    ${user}            factory_usuarioBloqueado

    Realizando login            ${user}
    Validar mensagem de erro    Epic sadface: Sorry, this user has been locked out.


Realizar Login PROBLEMÁTICO usuário com problema
    [Documentation]    CT para realização de login com usuário problemático
    [Tags]             usr_problem
    ${user}            factory_usuarioProblem

    Realizando login                                     ${user}
    Validar lista de produto com usuário problemático


Realizar Login PERFORMANCE de usuário
    [Documentation]    CT para realização de login com usuário que demora ao logar na aplicação
    [Tags]             usr_performance
    ${user}            factory_usuarioPerformance

    Realizando login     ${user}
    sleep                5
    Lista de produtos    PRODUCTS 

Realizar Login VÁLIDO e carrinho vazio
    [Documentation]    CT para realização de login com dados válidos
    [Tags]             usr_ok
    ${user}            factory_usuariook

    Realizando login            ${user}
    Lista de produtos           PRODUCTS 
    clicar botão do carrinho    
    Verificar carrinho vazio    

Realizar Login VÁLIDO e adicionar item no carrinho
    [Documentation]    CT para realização de login com dados válidos
    ...                e adicionar pelo menos 1 item no carrinho de compras
    [Tags]             add_carrinho
    ${user}            factory_usuariook

    Realizando login                               ${user}
    Lista de produtos                              PRODUCTS 
    Clicar o botão e adicionar bike no carrinho
    Validar carrinho com pelo menos 1 item


Realizar Login VÁLIDO e adicionar e remover item no carrinho
    [Documentation]    CT para realização de login com dados válidos
    ...                e adicionar pelo menos 2 itens e remover um item no carrinho de compras
    ...                realizar checkout e preencher o formulário
    [Tags]             delete
    ${user}            factory_usuariook

    Realizando login                               ${user}
    Lista de produtos                              PRODUCTS 
    Clicar o botão e adicionar bike no carrinho
    Validar carrinho com pelo menos 1 item
    Clicar em continuar no shopping
    Adicionar T-Shirt no carrinho
    clicar botão do carrinho
    Remover bike do carrinho
    Clicar em realizar checkout
    Preencher formulário de checkout
    Validar formulário de pagamento da T-Shirt


Realizar Login VÁLIDO e adicionar 3 itens
    [Documentation]    CT para realização de login com dados válidos
    ...                e adicionar pelo menos 3 itens e validar carrinho
    [Tags]             3_itens
    ${user}             factory_usuariook
  

    Realizando login                               ${user}
    Lista de produtos                              PRODUCTS 

    
    Escolher o Produto      Sauce Labs Fleece Jacket
    clicar botão adicionar no carrinho
    clicar para voltar e listar todos os produtos 
 
    Escolher o Produto      Sauce Labs Onesie    
    clicar botão adicionar no carrinho
    clicar para voltar e listar todos os produtos 

    Escolher o Produto      Test.allTheThings() T-Shirt (Red)
    clicar botão adicionar no carrinho
    clicar para voltar e listar todos os produtos

    clicar botão do carrinho
    Validar quantidade no carrinho      3

    Clicar em realizar checkout
    Preencher formulário de checkout
    clicar no botão continue 
    validar recibo de pagamento 






# Teste 
#     [Tags]  aa
    
    


