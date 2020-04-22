require "minitest/autorun"
require "./lib/ingredient"
require "./lib/pantry"
require "./lib/recipe"

class RecipeTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Recipe, @recipe1
  end
end



# pry(main)> require './lib/ingredient'
# # => true
#
# pry(main)> require './lib/recipe'
# # => true
#
#  pry(main)> ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
# # => #<Ingredient:0x007fe8438c7a70...>
#
#  pry(main)> ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
# # => #<Ingredient:0x007fe843857f40...>
#
# pry(main)> recipe1 = Recipe.new("Mac and Cheese")
# # => #<Recipe:0x007fe84383d000...>
#
# pry(main)> recipe1.name
# # => "Mac and Cheese"
#
# pry(main)> recipe1.ingredients_required
# # => {}
#
# pry(main)> recipe1.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe1.add_ingredient(ingredient1, 4)
#
# pry(main)> recipe1.add_ingredient(ingredient2, 8)
#
# pry(main)> recipe1.ingredients_required
# # => {#<Ingredient:0x00007fd7811553c8...> => 6, #<Ingredient:0x00007fd78110b0e8...> => 8}
#
# pry(main)> recipe1.ingredients
# # => [#<Ingredient:0x007fe8438c7a70...>, #<Ingredient:0x007fe843857f40...>]
#
# pry(main)> recipe2 = Recipe.new("Cheese Burger")
#
# pry(main)> cookbook = CookBook.new
