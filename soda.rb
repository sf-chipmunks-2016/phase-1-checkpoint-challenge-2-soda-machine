class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand] #string
    @price = args[:price] #float
  end
end

#new_soda = Soda.new({brand: "pepsi", price: 44})


#p new_soda.brand
#p new_soda.price

#a = [pepsi, slice]
#a.each {|item| return item.brand if item.brand =="pepsi"}
