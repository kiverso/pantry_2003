class Pantry
  attr_reader :stock

  def initialize(stock = Hash.new(0))
    @stock = stock
  end
end
