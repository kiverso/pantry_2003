class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name, ingredients_required = Hash.new(0))
    @name = name
    @ingredients_required = ingredients_required
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum do |ingredient, quantity|
      ingredient.calories * quantity
    end
  end
end
