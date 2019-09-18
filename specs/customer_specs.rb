require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drinks.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer = Customer.new("Elliot", 500, 17, 0)
    @drink1 = Drinks.new("IPA", 5, 2)
    @drink2 = Drinks.new("Peroni", 6, 4)
    @drink3 = Drinks.new("Moretti", 7, 6)
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

 def test_customer_age()
   assert_equal(21, @customer.age)
 end

 def test_drunkness()
   assert_equal(0, @customer.drunkness)
 end

end
