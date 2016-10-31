# require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    
    if soda 
      @cash += soda.price
      @sodas.delete(soda)
    end

    soda
  end
end


# p pepsi = Soda.new(brand: 'Pepsi', price: 0.65) 
# p coke_zero = Soda.new(brand: 'Coke_Zero', price: 1.00)
# new_machine = SodaMachine.new(sodas: [pepsi, coke_zero], cash: 1.00)
# p new_machine.sodas
# p new_machine.cash
# p new_machine.current_inventory_count
# puts "After a sale"
# p new_machine.find_soda("Pepsi")
# p new_machine.sell("Pepsi")
# p new_machine.sodas
# p new_machine.cash
# p new_machine.current_inventory_count


