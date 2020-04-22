require "minitest/autorun"
require "./lib/ingredient"

class IngredientTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
    assert_instance_of Ingredient, @ingredient2
  end
end
