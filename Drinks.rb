class Drinks

  attr_reader(:name, :price)

  def initialize(name, price)
    @name = name
    @price = price
  end

  def name_of_drink()
    return @name
  end

  def check_price()
    return @price
  end







end
