class Ingredient
attr_reader :name, :unit, :calories
  def initialize(ingredient_details)
    @name = ingredient_details[:name]
    @unit = ingredient_details[:unit]
    @calories = ingredient_details[:calories]
  end
end
