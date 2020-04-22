class CookBook
attr_reader :recipes
  def initialize(recipes = [])
    @recipes = recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = []
    @recipes.each do |recipe|
      ingredients << recipe.ingredients.map {|ingredient| ingredient.name }
    end
    ingredients.flatten.uniq
  end

  def highest_calorie_meal
    @recipes.max_by { |recipe| recipe.total_calories }
  end
end
