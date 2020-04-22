class CookBook
attr_reader :recipes
  def initialize(recipes = [])
    @recipes = recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
  end
end
