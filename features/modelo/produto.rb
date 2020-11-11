class Produto
    $array = Array.new
    attr_accessor :descricao, :url, :valor, :cashback

    def self.all_instances
        $array
    end

    def initialize(descricao, url, valor, cashback)
        @descricao = descricao
        @url = url
        @valor = valor
        @cashback = cashback
        $array << self
    end
end