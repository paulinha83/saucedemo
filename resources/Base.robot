*Settings*
Documentation      Minha Base


Resource     ${EXECDIR}/resources/Actions.robot

Library     Browser
Library     Factories/Users.py


*Variables*
${BASE_URL}        https://www.saucedemo.com


*Keywords*

Iniciando sessão 
    New Browser     Chromium        headless=False    slowMo=00:00:01
    New Page        ${BASE_URL} 
    Get Title       equal           Swag Labs
    wait for elements state    css=.bot_column      visible       5

Finalizando sessão
    Take Screenshot
