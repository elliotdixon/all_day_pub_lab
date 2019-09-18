class Customer

  attr_reader(:name, :wallet)


  def initialize(name, wallet)
    @name = name
    @wallet = wallet

  end

  def get_name
    return @name
  end

  def get_money
    return @wallet
  end

  def buy_drink(pub, drink)
    return @wallet -= drink.check_price
  end



  def sell_drink(pub, drink)
    return pub.till += drink.check_price
  end

end
