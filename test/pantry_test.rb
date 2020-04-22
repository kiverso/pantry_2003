require "minitest/autorun"
require "./lib/ingredient"
require "./lib/pantry"

class PantryTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_it_has_readable_attributes
    assert_equal ({}), @pantry.stock
  end

  def test_it_can_check_stock
    assert_equal 0, @pantry.stock_check(@ingredient1)
    assert_equal 0, @pantry.stock_check(@ingredient2)
  end

  def test_it_can_restock
    assert_equal 0, @pantry.stock_check(@ingredient1)
    assert_equal 0, @pantry.stock_check(@ingredient2)

    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    @pantry.restock(@ingredient2, 7)

    assert_equal 15, @pantry.stock_check(@ingredient1)
    assert_equal 7, @pantry.stock_check(@ingredient2)
  end
end

# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> pantry.stock
# # => {}
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 0
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 15
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.stock_check(ingredient2)
# # => 7
# ```
