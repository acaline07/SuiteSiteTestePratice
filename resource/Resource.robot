*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${URL}       https://www.kabum.com.br
${Login}     01358427860
${Senha}     123456

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser   https://www.kabum.com.br  ${BROWSER}
    Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
    Maximize Browser Window

#Fechar navegador
    #Close Browser

####Caso de Teste 01: Validar usuário inválido
#Acessar a página home do site
     #Go To  https://www.kabum.com.br
     #Title Should Be  KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina

# Clicar no botão login
#     Click Element  id=linkLoginHeader
#
# Clicar no campo de E-mail, CPF ou CNPJ
#     Click Element  id:inputUsuarioLogin
#     Click Button   id:onetrust-accept-btn-handler
#
# Digitar o CPF "01358427860" no campo de E-mail, CPF ou CNPJ
#     Input Text  xpath://input[@id="inputUsuarioLogin"]  ${Login}
#
# Clicar no campo senha
#     Click Element  id=inputSenhaLogin
#
# Digitar senha "123456" no campo senha
#     Input Text    xpath://input[@id="inputSenhaLogin"]   ${Senha}
#
# Clicar no botão entrar
#      Click Button    id:botaoLogin
#      Sleep    10s
# Conferir mensagem de erro "Dados inválidos, tente novamente!"
#      Wait Until Element Is Visible  class:hiZteZ
#
# #Caso de Teste 02: Fazer a busca de iphone
# Digitar o nome do produto "${PRODUTO}" no campo pesquisa
#          Input Text       id=input-busca    ${PRODUTO}
#          sleep  5s
#
# Clicar no botão pesquisa
#          Click Element    class:idbNbN
#           sleep  5s
#
# Conferir se o produto "${PRODUTO}" foi listado no site
#          Wait Until Element Is Visible    id=listingCount
#          Click Button   id:onetrust-accept-btn-handler
#          Sleep    10s
#Caso de Teste 03: Validar produto no carrinho
Selecionar o menu Todos os Departamentos
  Click Button   id:onetrust-accept-btn-handler
  Click Button  //button[.//text() = 'TODOS OS DEPARTAMENTOS']
  
Selecionar a categoria "Hardware" no menu Todos os Departamentos
  Execute Javascript    dom=document.getElementsByClass("itemCategoriaMenu")[0].click()
