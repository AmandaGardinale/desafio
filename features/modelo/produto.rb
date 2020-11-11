class Produto
    $array = Array.new
    attr_accessor :descricao, :url, :avista, :aprazo, :cashback

    def self.all_instances
        $array
    end

    def initialize(descricao, url, avista, aprazo, cashback)
        @descricao = descricao
        @url = url
        @avista = avista
        @aprazo = aprazo
        @cashback = cashback
        $array << self
    end
end