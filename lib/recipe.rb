class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name, ingredients_required = Hash.new(0))
    @name = name
    @ingredients_required = ingredients_required
  end

end
