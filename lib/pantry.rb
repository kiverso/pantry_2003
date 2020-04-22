class Pantry
  attr_reader :stock

  def initialize(stock = {})
    @stock = stock
  end
end
