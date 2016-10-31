class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    count = 0
    @sodas.each do |soda|
      count +=1
    end
    count
  end

  def find_soda(soda_brand)
    count = (0...sodas.length).to_a
    count.each do |i|
      if @sodas[i].brand == soda_brand
        return sodas[i]
      end
    end
    nil
  end

  def sell(soda_brand)
    count = (0...sodas.length).to_a
    count.each do |i|
      if @sodas[i].brand == soda_brand
        @cash += @sodas[i].price
        sold=@sodas.delete(@sodas[i])
        return sold
      end
    end
    nil
  end

end
