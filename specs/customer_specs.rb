require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drinks.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer = Customer.new("Elliot", 500)
    @drink1 = Drinks.new("IPA", 5)
    @drink2 = Drinks.new("Peroni", 6)
    @drink3 = Drinks.new("Moretti", 7)
    @pub = Pub.new("Rafas", 500, [@drink1, @drink2, @drink3])
  end

  def test_customer_have_name()
  assert_equal("Elliot", @customer.name)
  end

  def test_customer_has_money()
   assert_equal(500, @customer.wallet)
 end

 def test_customer_can_buy_drink__wallet_decreases()
   @customer.buy_drink(@pub, @drink1)
   assert_equal(495, @customer.wallet)
 end




 def test_sell_drink_to_customer()
   @customer.sell_drink(@pub, @drink1)
   assert_equal(505, @pub.till)
  end



  # def test_pub_cash()
  #   assert_equal(500, @pub.total_cash)
  # end
end
