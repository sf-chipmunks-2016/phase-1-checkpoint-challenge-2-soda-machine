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
      return nil
    end 
  end

  def sell(soda_brand)
    # find_brand = soda_brand.downcase.gsub!(' ', '_')
    #   if @sodas.include!?(find_brand)
    #     nil 
    #   else
    #     @sodas.include?(find_brand)
    #     brand_index = @sodas.index(find_brand)
    #     @sodas.delete_at(brand_index) --> to delete soda from inventory
    #   end 
        # get price of find_brand and push into soda machine cash
        # return sum of soda machine cash
  end

end

