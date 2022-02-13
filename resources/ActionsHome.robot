*Settings*
Documentation    Minha primeira suite de teste
...              Testando a primeira página.


Resource    ${EXECDIR}/resources/base.robot


*Keywords*
Validar rodapé
    wait for elements state    //footer[@class='footer']              visible    5
    wait for elements state    css=.social_twitter >> text=Twitter
    wait for elements state    //a[contains(text(),'Twitter')]        visible    5
    wait for elements state    //a[contains(text(),'Facebook')]       visible    5
    wait for elements state    //a[contains(text(),'LinkedIn')]       visible    5
    wait for elements state     //body/div[@id='root']/div[@id='page_wrapper']/footer[1]/img[1]
    Get text    css=.footer_copy    equal    © 2022 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy

Realizar Logout 
    Get text                   //div[@class='bm-menu'] >> text=Logout
    click                       //div[@class='bm-menu'] >> text=Logout  

Validar Título da página
    Get Title    ==                   Swag Labs
    Get Title    equal                Swag Labs
    Get Title    should be            Swag Labs
    Get Title    equal                Swag Labs
    Get Title    should start with    Swag Labs




Validação do formulário de autenticação
#formulário de usuário e senha
    wait for elements state    //div[@class='login_wrapper-inner']    visible    5
    wait for elements state    id=user-name                           visible    5
    wait for elements state    id=password                            visible    5


    # #boneco logomarca
    wait for elements state    //div[@class='bot_column']    visible    5

    # #botão de entrar login
    wait for elements state    id=login-button                              visible    5
    wait for elements state    //input[@id='login-button'] >> text=Login
    get text                   //input[@id='login-button']                  equal      Login

    #credenticias login
    Get text    //h4[contains(text(),'Accepted usernames are:')]    contains    Accepted usernames are:
    Get text    //div[@id='login_credentials']                      contains    standard_user
    Get text    //div[@id='login_credentials']                      contains    locked_out_user
    Get text    //div[@id='login_credentials']                      contains    problem_user
    Get text    //div[@id='login_credentials']                      contains    performance_glitch_user

    #credenticias senha
    Get text    //h4[contains(text(),'Password for all users:')]    equal    Password for all users:    

Validar menu
    Wait for elements state    //button[@id='react-burger-menu-btn']              visible    5
    Click                      //button[@id='react-burger-menu-btn']
    Wait for elements state    //div[@class='bm-menu-wrap']                       visible    5
    Get text                   //div[@class='bm-menu'] >> text=All Items
    Get text                   //div[@class='bm-menu'] >> text=About
    Get text                   //div[@class='bm-menu'] >> text=Logout
    Get text                   //div[@class='bm-menu'] >> text=Reset App State
