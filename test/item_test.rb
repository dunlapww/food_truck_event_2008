require 'minitest/autorun'
require './lib/item'
require './lib/food_truck'

class ItemTest < Minitest::Test

  def test_it_exists
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    assert_instance_of Item, item1
  end

end
