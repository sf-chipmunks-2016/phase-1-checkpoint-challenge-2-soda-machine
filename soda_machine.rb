class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    p args 
  end

  def current_inventory_count
    # count = args[:sodas].length 
    # return the number of sodas it contains
  end

  def find_soda(soda_brand)
    # find a single soda with a given brand
  end

  def sell(soda_brand)
     # A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash
  end

end
