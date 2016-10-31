class SodaMachine
  attr_reader :cash, :sodas

  def initialize(args = {})
    @sodas = args[:sodas] #rspec tests work, but was initially confused with the "brand and price" components of the hash
    @cash = args[:cash] #this is not the price; but balance
  end

  def current_inventory_count
    @sodas.length #current inventory of machine; the brands added in initialization are the current count!
  end

  def find_soda(soda_brand)
    #@sodas.find {|key, value| value[:sodas] == soda_brand.first}; needed to add a variable in order to combine find and sold
    sodas_sold = @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    sodas_sold = @sodas.find {|soda| soda.brand == soda_brand}
    return nil if sodas_sold.nil?
    @cash += sodas_sold.price
    @sodas.delete_at(@sodas.index(sodas_sold))
  end

end

#drive code
#p var1 = SodaMachine.new(brand: 'Pepsi', price: 0.65)
#Cash is actually the balance of the machine

