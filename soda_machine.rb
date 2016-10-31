class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    count = 0
    sodas.each do |i|
      count += 1
    end
    count
  end

  def find_soda(soda_brand)
    #sodas.detect {|i| i == soda_brand}
    sodas.each do |i|
      if i = sodas[soda_brand.to_s]
        soda_brand
      end
    end
  end

#having trouble accessing first element if it exists in array
  def sell(soda_brand)
  end

end

#machine = SodaMachine.new("pepsi", "coke", "sprite")
#p machine.current_inventory_count
