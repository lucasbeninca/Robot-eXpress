*** Settings ***
Documentation

Library    FakerLibrary

Resource    ../resources/base.robot

*** Test Cases ***
Deve poder cadastrar um novo usuario
    ${name}    FakerLibrary.Name
    ${email}    FakerLibrary.Free Email
    ${password}    Set Variable    pwd123

    Start Session
    Go To    http://localhost:3000/signup
    
    Wait For Elements State    xpath=//h1[text()="Faça seu cadastro"]    visible    5
    Get Text    xpath=//h1[text()="Faça seu cadastro"]    equal    Faça seu cadastro
    
    Fill Text    id=name        ${name}
    Fill Text    id=email       ${email}
    Fill Text    id=password    ${password}    

    Click    id=buttonSignup

    Wait For Elements State    css=.notice p    visible    5
    Get Text                   css=.notice p    equal    Boas vindas ao Mark85, o seu gerenciador de tarefas.

 