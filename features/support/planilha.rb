require_relative '../modelo/produto.rb'
require_relative '../step_definitions/desafio.rb'
require 'spreadsheet'

class Planilha
    def preenche_planilha(produtos)
        book = Spreadsheet::Workbook.new
    
        sheet1 = book.create_worksheet
        sheet1.row(0).push 'Descrição', 'Url', 'Valor à vista', 'Valor a prazo', 'Cashback'

        posicao = 1

        $produtos.each do |p|
            sheet1.row(posicao).push p.descricao, p.url, p.avista, p.aprazo, p.cashback
            posicao += 1
        end

        book.write 'desafio.xls'

    end
end