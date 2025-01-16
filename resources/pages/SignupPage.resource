*** Settings ***
Documentation     Elementos e ações na pagina 

Library    Browser
Resource   ../env.resource

*** Keywords ***

Go to signup Page
     Go To   ${BASE_URL}/signup
     Wait For Elements State    xpath=//h1[text()="Faça seu cadastro"]    visible    5
     Get Text    xpath=//h1[text()="Faça seu cadastro"]    equal    Faça seu cadastro

Submit signup from
    [Arguments]    ${user}
    
    Fill Text    id=name        ${user}[name]
    Fill Text    id=email       ${user}[email]
    Fill Text    id=password    ${user}[password]    

    #Click    id=buttonSignup
    Click    css=button[type=submit] >> text=Cadastrar


notice should base
    [Arguments]    ${expected_text}
    
     Wait For Elements State    css=.notice p    visible    5
     Get Text                   css=.notice p    equal     ${expected_text}

Alert should be
    [Arguments]    ${expect_text} 
     Wait For Elements State    css=.alert-error >> text=${expect_text} 
    ...    visible    5
