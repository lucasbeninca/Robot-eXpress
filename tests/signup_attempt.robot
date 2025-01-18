*** Settings ***
Documentation

Resource    ../resources/base.resource
#Resource    signup.robot

Test Template    Short password

Test Setup    Start Session
Test Teardown    Take Screenshot

*** Test Cases ***
Não deve cadastrar com senha de 1 digito.    1
Não deve cadastrar com senha de 2 digitos.    12
Não deve cadastrar com senha de 3 digitos.    123
Não deve cadastrar com senha de 4 digitos.    123a
Não deve cadastrar com senha de 5 digitos.    123ab

*** Keywords ***

Short password
    [Arguments]    ${short_pass}
   
    ${user}    Create Dictionary    
    ...    name=${EMPTY}    
    ...    email=${EMPTY}       
    ...    password=${short_pass}  
    
    Go to signup Page
    Submit signup from    ${user}

    Alert should be     Informe uma senha com pelo menos 6 digitos
