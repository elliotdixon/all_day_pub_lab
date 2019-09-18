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

end
