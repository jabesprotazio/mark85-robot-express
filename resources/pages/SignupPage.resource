*** Settings ***
Documentation       Elementos e ações da págnina de cadastro

Library             Browser
Resource            ../env.resource


*** Keywords ***
Go to signup page
    Browser.Go To             ${BASE_URL}/signup

    # Checkpoint 
    Wait For Ele ments State    css=h1     visible    5 
    Browser.Get Text                    css=h1     equal      Faça seu cadastro
    


Submit signup form
    [Arguments]                ${user}

    Fill Text                  css=input[name=name]          ${user}[name]
    Fill Text                  css=input[name=email]         ${user}[email]
    Fill Text                  css=input[name=password]       ${user}[password]

    Click                      css=button[type=submit] >> text=Cadastrar 

