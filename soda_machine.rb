class SodaMachine

  attr_reader :sodas
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.count()
  end

  def find_soda(soda_brand)
    # searches for the specific soda in
    self.sodas.find { |soda| soda if soda.brand == soda_brand }
  end

  def sell(soda_brand)
    # searches through the sodas variable and finds a specific soda with the specific brand
    soda = find_soda(soda_brand)
    if soda
      # if true adds that soda into the cash variable
      self.cash += soda.price
      # then deletes that soda from the machine
      self.sodas.delete(soda)
    end
  end

end
