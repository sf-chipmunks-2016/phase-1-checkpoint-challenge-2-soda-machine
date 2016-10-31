require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash
  attr_accessor :current_inventory_count
  

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @current_inventory_count = @sodas.length
  end

  def find_soda(soda_brand)
    i = 0
    while i < @sodas.length
      if @sodas[i].brand == soda_brand 
        @sodas[i]
        break
      end
      i += 1
    end
    
    @sodas[i]
    # returns either match or nil 
  end

  def sell(soda_brand)
    soda_to_sell = find_soda(soda_brand)

    if soda_to_sell != nil
      @cash += soda_to_sell.price 
      @sodas.delete(soda_to_sell)
    end

    soda_to_sell
  end

end
