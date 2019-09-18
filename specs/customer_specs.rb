require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drinks.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer = Customer.new("Elliot", 500)
  end

  def test_customer_have_name()
  assert_equal("Elliot", @customer.name)
  end

  def test_customer_has_money()
   assert_equal(500, @customer.wallet)
 end

end
