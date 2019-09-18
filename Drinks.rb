class Drinks

  attr_reader(:name, :price, :alcohol_level)

  def initialize(name, price, alcohol_level)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
  end

  def name_of_drink()
    return @name
  end

  def check_price()
    return @price
  end

  def check_alcohol_level()
    return @alcohol_level
  end






end
