class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = []
  end

  def current_inventory_count
      @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas[:sodas].include? soda_brand
      @sodas[:sodas][soda_brand]
    else
      nil
    end
  end

  def sell(soda_brand)
    if @sodas.include? soda_brand
      @sold_soda << @sodas[soda_brand]
      @sodas.delete(soda_brand)
      @sold_sodas
    else
      nil
    end
  end

end

