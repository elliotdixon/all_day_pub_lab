class Customer

  attr_reader(:name, :wallet, :age, :drunkness)


  def initialize(name, wallet, age, drunkness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness = drunkness

  end

  def get_name
    return @name
  end

  def get_money
    return @wallet
  end

  def buy_drink(drink)
    return @wallet -= drink.check_price
  end





  def get_age()
    return @age
  end

  def get_drunkness()
    return @drunkness
  end

end
