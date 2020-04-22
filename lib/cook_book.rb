class CookBook
attr_reader :recipes
  def initialize(recipes = [])
    @recipes = recipes
  end
end
