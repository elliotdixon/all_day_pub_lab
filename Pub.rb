class Pub

  attr_reader(:name, :till, :drinks)

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def pub_name()
    return @name
  end

  def pub_till()
    return @till
  end

  def pub_drinks()
    return @drinks.size
  end

  def get_drink()
    return @drinks.pop
  end

  def sell_drink(drink)
    return @till += drink.check_price
  end

  def customer_buy_drink(customer, drink)
    if age < 18
      return "Sorry too young"
    end
    customer.buy_drink(drink)
    sell_drink(drink)
  end


end
