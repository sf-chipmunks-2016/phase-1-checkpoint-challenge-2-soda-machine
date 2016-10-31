class SodaMachine
  attr_reader :sodas, :cash, :soda_count
    
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = ""
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end


# create 2 arrays (sold_soda, inventory) to separate current inventory
# and sold inventory history
  def sell(soda_brand)
    sold_soda, inventory = @sodas.partition do |soda|
      soda.brand == soda_brand
    end

# for each sold soda, delete from inventory and add price to cash
    sold_soda.each do |soda|
      @sodas.delete(soda)
      @cash += soda.price
    end
    sold_soda ? sold_soda.first : nil
  end

end
