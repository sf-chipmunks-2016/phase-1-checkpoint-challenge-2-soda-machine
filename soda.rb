class Soda
  attr_reader :brand, :price, :args

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
    @args = args
  end
end

# Soda.new(brand: 'Pepsi', price: 0.65, age: 1)
