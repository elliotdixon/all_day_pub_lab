require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drinks.rb")

class TestPub < MiniTest::Test

  def setup()
    @drink1 = Drinks.new("IPA", 5)
    @drink2 = Drinks.new("Peroni", 6)
    @drink3 = Drinks.new("Moretti", 7)
    @pub = Pub.new("Rafas", 500, [@drink1, @drink2, @drink3])
    @customer = Customer.new("Elliot", 500)
  end

  def test_pub_name()
    assert_equal("Rafas", @pub.name)
  end

  def test_pub_till()
    assert_equal(500, @pub.till)
  end

  def test_pub_drinks()
    assert_equal(3, @pub.pub_drinks)
  end

  def test_get_drink()
    drink = @pub.get_drink
    assert_equal(@drink3.name, drink.name)
  end

  def test_can_increase_pub_till()
    @pub.increase_pub_till(5)
    assert_equal(505, @pub.pub_till)
  end

  def test_customer_buy_drink()
    @customer.buy_drink(@pub, @drink1)
    @pub.increase_pub_till(5)
    assert_equal(505, @pub.pub_till)
    assert_equal(495, @customer.wallet)
  end









end
