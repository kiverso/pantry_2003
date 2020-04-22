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

  def enough_ingredients_for?(recipe)
    enough_of_each_ingredient = []
    @stock.each do |ingredient, quantity|
      enough_ingredients = (quantity >= recipe.ingredients_required[ingredient])
      enough_of_each_ingredient << enough_ingredients
    end
    enough_of_each_ingredient.all?
  end
end
