class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]

  end

  def current_inventory_count
    # returns the count of the sodas
    @sodas.count
  end

  def find_soda(soda_brand)
    # I want to find a way to iterate through the has and find a match
    # I wanted to call the key by matching it to the 
    soda = soda_brand.downcase.gsub(/ /, "_")
    @sodas.select {|k,v| k == soda.to_sym}


  end

  def sell(soda_brand)
    # If nil then return nil
    # if sold drop that exact one sold
  end

end

