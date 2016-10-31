class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    removed_soda = nil
    @sodas.each do |soda|
      if soda.brand == soda_brand
        removed_soda = @sodas.delete(soda)
        @cash += soda.price
      end
    end
    removed_soda
  end

end
