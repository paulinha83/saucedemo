*Settings*
Documentation    Minha primeira suite de teste
...              Testando a primeira página.


Resource    ${EXECDIR}/resources/base.robot


*Keywords*
Lista de produtos
    [Arguments]                ${msg}
    wait for elements state    css=.title                     visible    5
    get text                   css=.title                     equal      ${msg}
    wait for elements state    id=react-burger-menu-btn       visible    5
    wait for elements state    css=.peek                      visible    5
    wait for elements state    css=.product_sort_container    visible    5
    Get text                   css=.active_option             equal      NAME (A TO Z)
    wait for elements state    css=.inventory_list            visible    5
    wait for elements state     //div[@class='inventory_container']     visible         5

Verificar carrinho vazio
    wait for elements state    id=cart_contents_container            visible    5
    Get Element Count          xpath=//div[@class='cart_item'][1]    equal      0    


Validar lista de produto com usuário problemático
    wait for elements state    id=item_4_img_link                                                 visible    5
    log to console             11
    get text                   //div[@class='inventory_item_name'] >> text=Sauce Labs Backpack    equal      Sauce Labs Backpack
    log to console             aa

    get text    //div[contains(text(),'Sauce Labs Backpack')]//..//..//..//..//div[@class='inventory_item_price']    should start with    $
    get text    //div[contains(text(),'Sauce Labs Backpack')]//..//..//..//..//div[@class='inventory_item_price']    equal                $29.99






Realizando login
    [Tags]         login
    [Arguments]    ${user}

    click        id=user-name    
    fill text    id=user-name    ${user}[name]

    click                    id=password    
    fill text                id=password    ${user}[senha]
    clicar botão de Login


Realizando login válido
    [Tags]    login_valido

    [Arguments]    ${user}

    click        id=user-name    
    fill text    id=user-name    ${user}[name]

    click                    id=password    
    fill text                id=password    ${user}[senha]
    clicar botão de Login



clicar botão de Login
    click    id=login-button

Validar mensagem de erro
    [Arguments]                ${msg}
    wait for elements state    css=.error-button          visible     5
    ${html}                    Get Page Source
    Log                        mensagem total:${html} 
    Get text                   //h3                       contains    ${msg}

clicar botão do carrinho
    Click    css=.shopping_cart_link

Clicar o botão e adicionar bike no carrinho
    wait for elements state                xpath=//button[@id='add-to-cart-sauce-labs-bike-light']     visible    5
    wait for elements state                xpath=//button[@id='add-to-cart-sauce-labs-bike-light']     enabled    5
    click                                  xpath=//button[@id='add-to-cart-sauce-labs-bike-light'] 
    click                                  css=.shopping_cart_link
    wait for elements state                css=.inventory_item_name >> text=Sauce Labs Bike Light      visible    5
    get text                               css=.inventory_item_name                                    equal      Sauce Labs Bike Light
    Validar formulário de meu carrinho 

Adicionar T-Shirt no carrinho
    Click                                                //div[@class="inventory_list"]
    Click                                                xpath=(//img[@class="inventory_item_img"])[3]
    Click                                                //div[@class="inventory_details_name large_size"]
    Click                                                //div[@class="inventory_details_desc large_size"]
    Click                                                //div[@class="inventory_details_price"]
    Click                                                //button[@name="add-to-cart-sauce-labs-bolt-t-shirt"]
    Clicar em voltar para lista de todos os produtos 

Clicar em voltar para lista de todos os produtos
    click    id=back-to-products

Validar formulário de meu carrinho
    wait for elements state    css=.bm-burger-button              visible    5
    wait for elements state    css=.app_logo                      visible    5
    wait for elements state    css=.shopping_cart_link            visible    5
    wait for elements state    css=.header_secondary_container    visible    5
    wait for elements state    css=.cart_quantity_label           visible    5
    Get text                   css=.cart_quantity_label           equal      QTY
    wait for elements state    css=.cart_desc_label               visible    5
    Get text                   css=.cart_desc_label               equal      DESCRIPTION


Validar carrinho com pelo menos 1 item
    wait for elements state    css=.inventory_item_name                                       visible    5
    wait for elements state    css=.inventory_item_desc                                       visible    5    
    wait for elements state    xpath=//div[@class='cart_item'][1]                             visible    5
    get text                   //button[@id='remove-sauce-labs-bike-light'] >> text=Remove
    Get text                   //button[@id='continue-shopping'] >> text=Continue Shopping
    Get text                   id=checkout >> text=Checkout

Clicar em continuar no shopping
    Get text    //button[@id='continue-shopping'] >> text=Continue Shopping
    Click       //button[@id='continue-shopping'] >> text=Continue Shopping

Remover bike do carrinho
    click       id=remove-sauce-labs-bike-light
    get text    css=.cart_list                     not contains    Sauce Labs Bike Light

Clicar em realizar checkout
    wait for elements state    id=checkout                     visible    5
    get text                   id=checkout >> text=Checkout
    click                      id=checkout
    wait for elements state    id=first-name                   visible    5    

Preencher formulário de checkout
    click        id=first-name 
    fill text    id=first-name     Paula
    click        id=last-name 
    fill text    id=last-name      Onofre
    click        id=postal-code
    fill text    id=postal-code    58000000
    click        id=continue

Validar formulário de pagamento da T-Shirt
    wait for elements state    //div[@class='summary_info_label'][1]     visible                                                                               5
    get text                   //div[@class='summary_info_label'][1]     equal                                                                                 Payment Information:
    get text                   //div[@class='summary_value_label'][1]    contains                                                                              SauceCard #
    get text                   //div[@class='summary_info_label'][2]     equal                                                                                 Shipping Information:
    get text                   //div[@class='summary_value_label'][2]    equal                                                                                 FREE PONY EXPRESS DELIVERY!
    ${valor}                   Set Variable                              xpath=//div[@class='cart_item']/div[2]//div[@class='item_pricebar'] >> text=$15.99    
    get text                   ${valor}                                  equal                                                                                 $15.99                         
    Wait For Elements State    ${valor}                                  visible                                                                               5
    get text                   css=.summary_tax_label                    contains                                                                              Tax: $
    get text                   css=.summary_total_label                  contains                                                                              Total: $

Adicionar Jaqueta
    click                       xpath=//body/div[@id='root']/div[@id='page_wrapper']/div[@id='contents_wrapper']/div[@id='inventory_container']/div[1]/div[1]/div[1]/div[4]/div[1]/a[1]/img[1]
    wait for elements state     css=.inventory_details_desc large_size      visible     5
    get text                    css=.inventory_details_desc large_size                                                                                                                            equal        It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.
    get text                    css=.inventory_details_price                                                                                                                                      equal        $49.99
    get text                    //button[@id='add-to-cart-sauce-labs-fleece-jacket']                                                                                                              equal        Add to cart
    wait form elements state    //button[@id='add-to-cart-sauce-labs-fleece-jacket']                                                                                                              visible 5
    Click                       //button[@id='add-to-cart-sauce-labs-fleece-jacket']
    get text                    remove-sauce-labs-fleece-jacket                                                                                                                                   equal        Remove


verificar quantidade
    Get Element Count    //div[@class='cart_list']    ==    1
