*** Settings ***
Library    Browser

Resource    variables.robot
Resource    home-keywords.robot
Resource    home-pageObjects.robot

*** Keywords ***

Abrir navegador
    Open Browser    ${FRONTEND_URL}    firefox    False    False
    
Tirar print e fechar o navegador
    ${browser_open}=    Run Keyword And Return Status    Get Page State    # Check if a page is open
    IF    ${browser_open}==True
        Take Screenshot
    ELSE
        Log    message=No browser open, skipping screenshot    level=WARN
    END
    Close Browser

Verificar política de cookies
    Run Keyword And Ignore Error    Wait For Elements State    ${COOKIES_BUTTON} 
    ${CHECK_ALERT_COOKIES}=    Run Keyword And Return Status    Get Element States    ${COOKIES_BUTTON}
    IF    ${CHECK_ALERT_COOKIES}==True
        Click    ${COOKIES_BUTTON}
    ELSE
        Log    message=Sem cookies
    END