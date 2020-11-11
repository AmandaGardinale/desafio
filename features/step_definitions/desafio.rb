require_relative '../support/planilha.rb'

$produtos = Produto.all_instances

Dado('que eu acesse o site da Americanas') do
    visit($url_padrao)
end

Então('vou verificar a url') do
    expect(page).to have_current_path($url_padrao)
end

Quando('eu preencher o campo de busca com o produto {string}') do |produto|
    find_field('h_search-input').set(produto)
end

Quando('clicar no botão de busca') do
    find_by_id('h_search-btn').click
end

Então('devo ver o produto {string} na tela') do |smartphone|
    @local = find(:xpath, "//h1[@class='full-grid__Title-n1a9ou-0 ciJNuk']")
    expect(@local).to have_content(smartphone)
end

Então('vou selecionar a opção de produtos mais relevantes') do 
    find('#sort-by').find("option[value='relevance']").select_option
end

Então('irei buscar os dados do produto {string}') do |busca_produto|
    first('span', :text => busca_produto).click

    $descricao = first(:xpath, "//span[@class='src__Text-sc-154pg0p-0 src__Title-sc-14j0fsd-0 gjpFEE']").text
    $cashback = page.first('span', :text => ' de volta').text
    $url = URI.parse(current_url).to_s

    $avista = ""
    $aprazo = ""

    if(page.has_text?('no boleto')) 
        $valor_vista = page.first(:xpath, "//div[@class='src__BestPrice-lo2vta-5 bFIChl priceSales']").text
        find(:xpath, "//a[@href='#modal-payment-methods']").click
        $busca_a_prazo = page.first('td', :text => 'total R$ ').text
        $avista = ($valor_vista)
        $aprazo = ($busca_a_prazo)
    else
        $valor_prazo = page.first(:xpath, "//div[@class='src__BestPrice-lo2vta-5 bFIChl priceSales']").text
        $avista = ('Não há opção de pagamento à vista para este produto.') 
        $aprazo = ($valor_prazo)
    end

    $produto = Produto.new($descricao, $url, $avista, $aprazo, $cashback)

end

Então('a planilha de produtos será preenchida') do
    Planilha.new.preenche_planilha($produtos)
end