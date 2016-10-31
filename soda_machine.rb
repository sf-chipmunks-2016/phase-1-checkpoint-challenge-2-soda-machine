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
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    removed_soda = nil
    # brand_names = @sodas.map(&:brand)
    # index_soda_to_delete = brand_names.index(soda_brand)
    # if index_soda_to_delete
    #   removed_soda = @sodas.delete_at(index_soda_to_delete)
    #   @cash += removed_soda.price
    # end
    @sodas.each do |soda|
      if soda.brand == soda_brand
        removed_soda = @sodas.delete(soda)
        @cash += soda.price
      end
    end
    removed_soda
  end

end
