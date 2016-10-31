class Soda
  attr_reader :brand, :price, :sodas

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end
