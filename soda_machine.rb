# Welp I got super stuck right out the gate. Not a lot going on here.

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  #A soda machine will be able to return the number of sodas it contains. This method should be called SodaMachine#current_inventory_count.

  def current_inventory_count
    if @sodas.length > 0
      return @sodas.length
    else
      return nil
    end

  end

  #A soda machine will be able to find a single soda with a given brand. This method will be called SodaMachine#find_soda.

  def find_soda(soda_brand)
    sodas = @sodas[0]
    sodas.key(soda_brand)
  end

  #A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash This method will be called SodaMachine#sell.

  def sell(soda_brand)

  end

end


