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
    #@sodas.find {|name| name = soda_brand}
    #@sodas.select {|name| name = soda_brand}
    #@sodas.detect{|name| name = soda_brand}
    #@sodas.index(soda_brand)
    #these are all the methods I attempted to use, but none passed the tests.
  end

  def sell(soda_brand)
  #@sodas.delete(soda_brand)
  # @sodas.reject(soda_brand)
  # I want a method that will return the array without the deleted soda
  #  @cash += @sodas[:price]
  end

end
