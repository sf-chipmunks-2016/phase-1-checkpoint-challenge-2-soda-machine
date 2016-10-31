class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end
#A soda machine will be able to return the number of sodas it contains. 
#This method should be called SodaMachine#current_inventory_count.
  def current_inventory_count
    return soda_machine.length
  end

  def find_soda(soda_brand)
    sodas.select do |soda| 
      if soda == soda_brand
        return soda
      elsif soda != soda_brand
        return nil
      end
    end
  end

  def sell(soda_brand)
  end

end
