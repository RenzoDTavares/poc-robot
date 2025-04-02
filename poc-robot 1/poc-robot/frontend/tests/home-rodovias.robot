*** Settings ***
Resource    ../resources/baseFront.robot

Test Setup     Run Keywords       
...            Abrir navegador    AND
...            Verificar política de cookies

Test Teardown    Tirar print e fechar o navegador 

*** Test Cases ***
# Redirecionamento para a pagina SPVias
#     [Tags]    redirecionamento_SPVias
#     Validar logotipo visivel
#     Menus principais 
#     Redirecionamento SPVias
  

# Redirecionamento para a pagina Rodoanel
#     [Tags]    redirecionamento_Rodoanel
#     Validar logotipo visivel
#     Menus principais 
#     Redirecionamento Rodoanel

# Redirecionamento para a pagina ViaOeste
#     [Tags]    redirecionamento_Viaoeste
#     Validar logotipo visivel
#     Menus principais 
#     Redirecionamento Viaoeste

# Validacao do mapa
#     [Tags]    validacao_mapa
#     Validar logotipo visivel
#     Menus principais 
#     Redirecionamento SPVias
#     Validacao mapa

      # Testes de Busca
Buscar informações no site
    [Tags]    busca
    Clicar na lupa
    Buscar por "Tarifas"
    Validar resultado da busca por "Tarifas"
   

#   Scenario: Buscar uma rodovia específica
#     Given que o usuário está na página inicial
#     When ele insere "<Rodovia>" no campo de busca
#     And clica no botão de busca
#     Then a página de resultados deve exibir informações sobre "<Rodovia>"