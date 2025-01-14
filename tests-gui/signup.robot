*** Settings ***
Documentation

Resource    ../resources/base.resource
Library    ../robot-venv/lib/python3.12/site-packages/robot/libraries/OperatingSystem.py

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

    Sleep    10