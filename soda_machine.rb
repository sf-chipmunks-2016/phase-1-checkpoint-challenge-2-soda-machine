class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    # price = .65
    # brand = pepsi
    # Soda.new(soda_brand)
    @sodas.find{|soda| soda.brand == soda_brand}


    # @sodas.find{|soda| return soda_brand}
    # return soda



  end

  def sell(soda_brand)
    # sodas.find(soda_brand)  
    sold_soda = sodas.find(soda_brand)
    @cash += sold_soda.price
    @sodas.delete(sold_soda)
  end

end
