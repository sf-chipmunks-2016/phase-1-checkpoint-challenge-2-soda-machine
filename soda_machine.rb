class SodaMachine

  attr_reader :sodas
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.count()
  end

  def find_soda(soda_brand)
    self.sodas.find { |soda| return soda if soda.brand == soda_brand }
  end

  def sell(soda_brand)
    self.sodas.find do |soda|
      if soda.brand == soda_brand
        self.cash += soda.price
        self.sodas.delete(soda)
      end
    end
  end

end
