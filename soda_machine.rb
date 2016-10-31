require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = args[:sodas]
  end

  def current_inventory_count
    @sodas.inject(0) {|sum, sodas| sum + Soda[:brand]}
    # I want to add up the brands in Soda from soda.rb
  end

  def find_soda(soda_brand)
    if @sodas[Soda[:brand]].has_value?(soda_brand)
      soda_brand
      # if the brand exists in the Soda class, then return it
    else
      nil
    end
  end

  def sell(soda_brand)
    if !find_soda(soda_brand)
       nil
       # if the machine couldn't find the soda, then you can't sell it
     elsif @sodas[brand].has_value?(soda_brand)
        @sold_soda[brand] = soda_brand
        # return the brand of the soda being sold
        @cash.inject(price) {|sum, cash| sum + Soda[:price]}
        # add the price of the sold soda to the cash stash of the machine
        @sodas.delete(Soda[soda_brand])
        # take out the sold soda from the hash in the Soda class
      end
    end


end
