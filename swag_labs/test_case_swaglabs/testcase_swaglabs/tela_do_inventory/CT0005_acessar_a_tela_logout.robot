*** Settings ***
Documentation    Este caso de teste tem como objetivo verificar o acesso a tela Logout

Metadata    Ambiente     ${AMBIENTE}

Resource    ../../../../swag_labs/main/main.robot

Test Setup    Realizar test setup
Test Teardown    Realizar o test teardown    INVENTORY    CT0005

Test Timeout    2 minutes

*** Test Cases ***
Verificar o acesso a tela Logout
    [Documentation]
    ...    Pré condição:
    ...    
    ...    Usuario  e senha cadastrado
    [Tags]    regression    CT0005    inventory

    Clique no botão menu
    Verificar as opções do botão menu "All Items"
    Verificar as opções do botão menu "About"
    Verificar as opções do botão menu "Logout"
    Verificar as opções do botão menu "Reset App State"
    Clique no botão "Logout"
    Verificar o acesso a tela "Logout"