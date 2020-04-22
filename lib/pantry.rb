class Pantry
  attr_reader :stock

  def initialize(stock = Hash.new(0))
    @stock = stock
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end
end
