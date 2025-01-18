*** Settings ***
Documentation

Resource    ../resources/base.resource
#Library    ../robot-venv/lib/python3.12/site-packages/robot/libraries/OperatingSystem.py

Test Setup    Start Session
Test Teardown    Take Screenshot

*** Test Cases ***
Deve poder cadastrar um novo usuario

   ${user}    Create Dictionary    
    ...    name=Lucas    
    ...    email=lucas@outlook.com    
    ...    password=pwd123

    Remove user from database    ${user}[email]

    Go to signup Page
    Submit signup from    ${user}
    notice should base    Boas vindas ao Mark85, o seu gerenciador de tarefas.

Nao deve permitir o cadastro com email duplicado
    [Tags]    dup

    ${user}    Create Dictionary    
    ...    name=Lucas    
    ...    email=lucas@outlook.com    
    ...    password=pwd123

    Remove user from database    ${user}[email]
    insert user from database    ${user}

    Go to signup Page
    Submit signup from    ${user}
    notice should base    Oops! Já existe uma conta com o e-mail informado.

    Remove user from database    ${user}[email]

Campos obrigatorios
    [Tags]    required

     ${user}    Create Dictionary    
    ...    name=${EMPTY}    
    ...    email=${EMPTY}       
    ...    password=${EMPTY}   
    
    Go to signup Page
    Submit signup from    ${user}

    Alert should be    Informe seu nome completo
    Alert should be    Informe seu e-email
    Alert should be    Informe uma senha com pelo menos 6 digitos

Não deve cadastra com email invalido
    [Tags]    inv_email

     ${user}    Create Dictionary    
    ...    name=${EMPTY}    
    ...    email=emailnaovalido@.com.br     
    ...    password=${EMPTY}   
    
    Go to signup Page
    Submit signup from    ${user}

    Alert should be    Digite um e-mail válido


Não deve cadastar conta com senha de 1 digito
    [Tags]    short_pass
    [Template]
    Short password    1

Não deve cadastar conta com senha de 1 digito
    [Tags]    short_pass
    [Template]
    Short password    12

Não deve cadastar conta com senha de 2 digito
    [Tags]    short_pass
    [Template]
    Short password    123

Não deve cadastar conta com senha de 3 digito
    [Tags]    short_pass
    [Template]
    Short password    123a

Não deve cadastar conta com senha de 4 digito
    [Tags]    short_pass
    [Template]
    Short password    123b
    
*** Keywords ***

Short password
    [Arguments]    ${short_pass}
   
    ${user}    Create Dictionary    
    ...    name=Lucas  
    ...    email=lucas@gmail.com    
    ...    password=${short_pass}  
    
    Go to signup Page
    Submit signup from    ${user}

    Alert should be     Informe uma senha com pelo menos 6 digitos

