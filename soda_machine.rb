require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :args

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @args = args
  end

  def current_inventory_count
    #returns the number of sodas in the machine
    # soda_machine is a hash with a key :sodas that is a array
    #this statment returns 4 put I believe it is counting something else.
     p @args[:sodas].length
    # p @machine[@sodas].[@brand]
  end

  def find_soda(soda_brand)
    # A soda machine will be able to find a single soda with a given brand. 
    p @args[:sodas][soda_brand]
  end

  def sell(soda_brand)
  end

end

# SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00) 
# :sodas=>[#<Soda:0x007fbcf92985c0 @brand="Pepsi", @price=0.65>, #<Soda:0x007fbcf92983e0 @brand="Mount... @brand="Coke Zero", @price=1.0>, #<Soda:0x007fbcf92dbeb0 @brand="Pepsi", @price=0.65>], :cash=>1.0}