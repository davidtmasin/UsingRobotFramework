*** Settings ***
Documentation           Essa suíte testa o site da Amazon.com.br
# ...                     um texto gigante aqui
# Suite Setup             ...
# Suite Teardown          ...
Test Setup              Abrir o navegador
Test Teardown           Fechar o navegador


*** Test Case ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste verifica o menu Eletrônicos do site da Amazon.com.br
    ...                 e verifica a categoria Computadores e Informática
    [Tags]              menus   categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título na página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão Pesquisa
    Verificar o resultado da pesquisa, listado o produto pesquisado
     