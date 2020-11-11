#language: pt

Funcionalidade: Buscando produtos pelo site Americanas

    Eu como cliente quero acessar a plataforma da Americanas para:

        - Buscar produtos específicos;

        - Buscar a url do site;

        - Pegar a descrição do produto;

        - Pegar o valor à vista do produto;

        - Pegar o valor do cashback;


Contexto: Acessando e verificando url do site
    Dado que eu acesse o site da Americanas
    Então vou verificar a url 

Cenário: Buscando pelo Smartphone Samsung 
    Quando eu preencher o campo de busca com o produto 'Smartphone Samsung Galaxy A70'
    E clicar no botão de busca
    Então devo ver o produto 'smartphone samsung galaxy a70' na tela
    E vou selecionar a opção de produtos mais relevantes
    Então irei buscar os dados do produto ' smartphone samsung galaxy a70 '

Cenário: Buscando pelo Smartphone Motorola  
    Quando eu preencher o campo de busca com o produto 'Smartphone Motorola One Vision'
    E clicar no botão de busca
    Então devo ver o produto 'smartphone motorola one vision' na tela
    E vou selecionar a opção de produtos mais relevantes
    Então irei buscar os dados do produto 'smartphone motorola one '

Cenário: Buscando pelo Smartphone Xiaomi  
    Quando eu preencher o campo de busca com o produto 'Smartphone Xiaomi Redmi Note 7'
    E clicar no botão de busca
    Então devo ver o produto 'smartphone xiaomi redmi note 7' na tela
    E vou selecionar a opção de produtos mais relevantes
    Então irei buscar os dados do produto 'smartphone xiaomi redmi note 7 '

Cenário: Preenchendo a planilha com os produtos extraídos
    Então a planilha de produtos será preenchida