*** Settings ***
Documentation    Testes de Login - Atividade Testes de Software
Library          SeleniumLibrary
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Variables ***
${URL}                  https://practicetestautomation.com/practice-test-login/
${BROWSER}              chrome
${USUARIO_VALIDO}       student
${SENHA_VALIDA}         Password123
${USUARIO_INVALIDO}     usuario_inexistente
${SENHA_INVALIDA}       senha_incorreta

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Test Login

Fechar Navegador
    Close Browser

Fazer Login
    [Arguments]    ${usuario}    ${senha}
    Input Text     id:username    ${usuario}
    Input Text     id:password    ${senha}
    Click Button   id:submit

Verificar Login Bem Sucedido
    Wait Until Page Contains    Logged In Successfully
    Page Should Contain         Congratulations student. You successfully logged in!
    Element Should Be Visible   xpath://a[contains(text(),'Log out')]

Verificar Mensagem de Erro
    [Arguments]    ${mensagem_esperada}
    Wait Until Page Contains    ${mensagem_esperada}
    Page Should Contain         ${mensagem_esperada}

*** Test Cases ***
TC001 - Login com credenciais válidas (Classe Válida)
    [Documentation]    Teste de login com usuário e senha corretos
    [Tags]             classe_valida    login_sucesso
    Fazer Login        ${USUARIO_VALIDO}    ${SENHA_VALIDA}
    Verificar Login Bem Sucedido

TC002 - Login com usuário inexistente (Classe Inválida)
    [Documentation]    Teste de login com usuário que não existe
    [Tags]             classe_invalida    usuario_inexistente
    Fazer Login        ${USUARIO_INVALIDO}    ${SENHA_VALIDA}
    Verificar Mensagem de Erro    Your username is invalid!

TC003 - Login com senha incorreta (Classe Inválida)
    [Documentation]    Teste de login com senha incorreta
    [Tags]             classe_invalida    senha_incorreta
    Fazer Login        ${USUARIO_VALIDO}    ${SENHA_INVALIDA}
    Verificar Mensagem de Erro    Your password is invalid!

TC004 - Login com usuário de 1 caractere (Valor Limite)
    [Documentation]    Teste de login com usuário de apenas 1 caractere
    [Tags]             valor_limite    usuario_limite
    Fazer Login        a    ${SENHA_VALIDA}
    Verificar Mensagem de Erro    Your username is invalid!

TC005 - Login com usuário vazio (Valor Limite)
    [Documentation]    Teste de login com campo usuário vazio
    [Tags]             valor_limite    usuario_vazio
    Fazer Login        ${EMPTY}    ${SENHA_VALIDA}
    Verificar Mensagem de Erro    Your username is invalid!

TC006 - Login com senha vazia (Valor Limite)
    [Documentation]    Teste de login com campo senha vazio
    [Tags]             valor_limite    senha_vazia
    Fazer Login        ${USUARIO_VALIDO}    ${EMPTY}
    Verificar Mensagem de Erro    Your password is invalid!