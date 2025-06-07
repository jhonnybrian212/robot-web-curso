** Settings **

Library  SeleniumLibrary

** Variables **
${URL}      https://automationpratice.com.br/
${URL_JHONNY}      https://google.com.br
${USER}     qazando@teste.com
${PASSWORD}  123456

** Keywords **
Abrir Site google
    Open Browser  ${URL_JHONNY}  chrome
    Maximize Browser Window
    Esperar site carregar   2

Abrir Site
    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Esperar site carregar   2

Abrir esse site
    [Arguments]  ${URL}
    Open Browser  ${URL}  chrome
    Maximize Browser Window

Esperar site carregar
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

Aguardar site carregar
    Sleep  5s

Clicar sobre o botão Login
    Click Element    xpath=//a[@href="/login" and contains(., "Login")]
    # Click Element    xpath=//a[@href='/login']

Digitar email
    Input Text  id=user     ${USER}

Digitar senha
    Input Text  id=password  ${PASSWORD}

Clicar no botão login
    Click Button    id=btnLogin

Verificar se o usuário está logado
    ${texto_login_sucesso}  Get Text    id=swal2-title
    Should Be Equal As Strings    ${texto_login_sucesso}    Login realizado

** Test Cases **
Cenário 1: Acessando o site do Robot
    [Tags]  Cenario1
    Abrir Site
    Clicar sobre o botão Login
    Digitar email
    Digitar senha
    Clicar no botão login
    Verificar se o usuário está logado

# Cenário 2: Testando Robot
#     [Tags]  Cenario2
#     Abrir Site google
#     Clicar sobre o botão Login
#     Digitar email
#     Digitar senha
#     Clicar no botão login
#     Verificar se o usuário está logado

# Cenário 3: Testando valor no teste
#     [Tags]  Cenario3
#     Abrir esse site  https://automationpratice.com.br/
#     Clicar sobre o botão Login
#     Digitar email
#     Digitar senha
#     Clicar no botão login
#     Verificar se o usuário está logado