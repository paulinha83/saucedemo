*Settings*
Documentation      Minha Base


Resource     ${EXECDIR}/resources/Actions.robot
Resource     ${EXECDIR}/resources/ActionsHome.robot

Library     Browser
Library     Collections
Library     String
Library     Factories/Users.py


*Variables*
${BASE_URL}        https://www.saucedemo.com


*Keywords*

Iniciando sessão 
    New Browser     Chromium        headless=False    slowMo=00:00:01
    New Page        ${BASE_URL} 
    Set Viewport Size       1280     768
    Get Title       equal           Swag Labs
    # New Context  recordVideo={'dir': '${OUTPUT_DIR}/video'}

Finalizando sessão
     ${shot_name}        Screenshot Name
    Take Screenshot         fullPage=True       filename=${shot_name}


Verificar se o site está OK
    [Documentation]       Vou verificar se o site está no ar ou com problemas técnicos
    ${FORA_DO_AR}         Run Keyword And Return Status
    ...                   Wait Until Page       Contains   Resource Limit Is Reached
    ${TECHNICAL_ERROR}    Run Keyword And Return Status
    ...                   Wait Until Page       Contains   ERROR

    IF  ${FORA_DO_AR} or ${TECHNICAL_ERROR}
        Capture Page Screenshot
        Fail  msg=-----> O site está fora do ar ou com problemas técnicos! Tente novamente mais tarde!
    END