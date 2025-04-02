*** Settings ***
Documentation    Implementação das keywords utilizadas em Sites
Library    Browser
Resource    baseFront.robot

*** Keywords ***

Validar logotipo visivel
    Wait For Elements State    xpath=//*[@id="container-4eeed95508"]/div/div[1]/a/img    

Menus principais    
    Click             ${MENU_SUPERIOR_HOME}

Redirecionamento SPVias
    Click             xpath=//*[@id="atom_navHeader-Concessionary-6dc3f0adb1"]/ul/li[3]/a
    Should Contain    xpath=//src[contains(text(), 'SPVias')]    SPVias
    Take Screenshot

Redirecionamento Rodoanel
    Click             xpath=//*[@id="atom_navHeader-Concessionary-6dc3f0adb1"]/ul/li[5]/a
    Should Contain    xpath=//src[contains(text(), 'Rodoanel')]    Rodoanel
    Take Screenshot    

Redirecionamento ViaOeste
    Click             xpath=//*[@id="atom_navHeader-Concessionary-6dc3f0adb1"]/ul/li[8]/a
    Should Contain    xpath=//src[contains(text(), 'ViaOeste')]    ViaOeste
    Take Screenshot 

Validacao mapa
    Click                      xpath=//*[@id="roadcards-map-select-options"]/li[2]
    Wait For Elements State    id=map

Clicar na lupa
    Click                      id=btnSearch

Buscar por "Tarifas"
    Fill Text    css=input[name="termSearch"]    Tarifas
    Press Keys    css=input[name="termSearch"]    Enter
    Sleep                     2s
    
Validar resultado da busca por "Tarifas"
    ${total_results}=    Get Text    css=.total-results
    Should Contain    ${total_results}    Exibindo

    ${exists}=    Run Keyword And Return Status    Page Should Contain Element    .cmp-searchHeader__results-container-wrapper
    Tirar print e fechar o navegador
    