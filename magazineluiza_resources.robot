*** Settings ***
Library    SeleniumLibrary
Library    Process

*** Variables ***
${URL}               https://www.magazineluiza.com.br/
${MENU_BEMVINDO}    //div[@color='white'][contains(.,'Bem-vindo :)')]
${MENU_CELULARES}   (//a[@data-testid='link'][contains(.,'Celulares')])[1]


*** Keywords ***
Abrir navegador   
    Open Browser    browser=chrome
    

Fechar navegador   
    Sleep       5s
    Capture Page Screenshot
    Close Browser
     

Acessar a home page do site magazineluiza.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_BEMVINDO} 

Entrar no menu "Celulares" 
    Click Element    locator=${MENU_CELULARES}

Verificar se o título da página fica com a frase "Celular e smartphone"
    Wait Until Page Contains    text=Celular e Smartphone

Verificar se o título da página fica como "${TITULO}"
    Title Should Be    title=Celular e Smartphone | Magazine Luiza

Verificar se aparece a categoria 'Categoria'
    Wait Until Element Is Visible    locator=//p[@data-testid='main-title'][contains(.,'Categoria')]
    Element Should Be Visible        locator=//p[@data-testid='main-title'][contains(.,'Categoria')]

Digitar o nome do produto "${PRODUTO}"
    Input Text    locator=input-search    text=${PRODUTO}

Clicar no botão de pesquisa
    Wait Until Element Is Visible    locator=//div[@data-testid='suggestion-text'][contains(.,'geladeira refrigerador')]
    Click Element    locator=//div[@data-testid='suggestion-text'][contains(.,'geladeira refrigerador')]

Verificar o resultado da pesquisa, listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//h2[@data-testid='product-title'][contains(.,'Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V')]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Image    locator=//img[contains(@alt,'Geladeira Electrolux 260 Litros Cycle Defrost Branca DC35A - 110V')]
    Wait Until Element Is Visible    locator=(//button[@color='secondary'][contains(.,'Adicionar à Sacola')])[1]
    Click Element    locator=(//label[@class='sc-bYoBSM jltFsr'][contains(.,'Adicionar à Sacola')])[1]

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso 
    Wait Until Element Is Visible    locator=//p[@class='BasketItemProduct-info-sku'][contains(.,'Código do produto: be3401f26f')]

Remover o produto "${PRODUTO}" do carrinho
    Click Button    locator=//button[@class='BasketItemProduct-quantity-remove'][contains(.,'Excluir')]

Verificar se o carrinho fica vazio   
    Wait Until Element Is Visible    locator=//div[@class='EmptyBasket-title'][contains(.,'Sua sacola está vazia')]




    
