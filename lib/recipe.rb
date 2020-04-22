class Recipe
  def initialize(name, ingredients_required = Hash.new(0))
    @name = name
    @ingredients_required = ingredients_required
  end

end
