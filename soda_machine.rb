require './soda.rb'
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
    @sodas.each do |soda|
      return soda if soda.brand == soda_brand
    end
    nil
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        return sodas.delete(soda)
      end
    end
    nil
  end
end
