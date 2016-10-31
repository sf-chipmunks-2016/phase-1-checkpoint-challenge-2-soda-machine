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
    find_brand = soda_brand.downcase.gsub!(' ', '_')
    if @sodas.include?(find_brand)
      brand_index = @sodas.index(find_brand)
      @sodas[brand_index]
    else
      nil
    end 
  end

  def sell(soda_brand)
     # A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash
  end

end

