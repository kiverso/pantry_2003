require "minitest/autorun"
require "./lib/ingredient"
require "./lib/pantry"
require "./lib/recipe"
require "./lib/cook_book"

class CookBookTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @cookbook = CookBook.new
  end

  def test_it_exists
    assert_instance_of CookBook, @cookbook
  end

  def test_it_has_readable_attributes
    assert_equal [], @cookbook.recipes
  end

  def test_it_can_add_recipes
    assert_equal [], @cookbook.recipes
    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe2)

    assert_equal [@recipe1, @recipe2], @cookbook.recipes
  end
end



# pry(main)> recipe2 = Recipe.new("Cheese Burger")
#
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.recipes
# # => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]
