*** Settings ***
Documentation    Essa suíte testa o site da magazine Luiza 
Resource         magazineluiza_resources.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador 

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Celular e smartphone" 
    [Documentation]  Este teste verifica o menu Pet shop do site magazineluiza.com.br 
    [Tags]           menus 
    Acessar a home page do site magazineluiza.com.br
    Entrar no menu "Celulares" 
    Verificar se o título da página fica com a frase "Celular e smartphone"
    Verificar se o título da página fica como "Celular e Smartphone | Magazine Luiza"
    Verificar se aparece a categoria 'Categoria'

Caso de teste 02 - Pesquisa de produto 
    [Documentation]  Este teste verifica a pesquisa dos produtos
    [Tags]           busca_produtos 
    Acessar a home page do site magazineluiza.com.br
    Digitar o nome do produto "geladeira"
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V"


Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site magazineluiza.com.br
    Digitar o nome do produto "geladeira"
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V"
    Adicionar o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V" no carrinho
    Verificar se o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site magazineluiza.com.br
    Digitar o nome do produto "geladeira"
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V"
    Adicionar o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V" no carrinho
    Verificar se o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V" foi adicionado com sucesso
    Remover o produto "Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V" do carrinho
    Verificar se o carrinho fica vazio




# selecionar tudo ctrl ; para comentar    
# robot --help  (Documentação do Robot) 
# cls (Limpar tela) 
# robot --help
# robot -t "Caso de teste 02 - Pesquisa de produto" magazineluiza_testes.robot  (Executar 1 caso de teste)


