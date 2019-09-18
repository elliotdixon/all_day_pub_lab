require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drinks.rb")

class TestDrinks < MiniTest::Test

  def setup()
    @drink1 = Drinks.new("IPA", 5, 2)
    @drink2 = Drinks.new("Peroni", 6, 4)
    @drink3 = Drinks.new("Moretti", 7, 6)
  end

  def test_name_of_drink()
    assert_equal("IPA", @drink1.name)
  end

  def test_check_price_of_drink()
    assert_equal(5, @drink1.price)
  end

  def test_alcohol_level()
    assert_equal(2, @drink1.alcohol_level)
  end

end
