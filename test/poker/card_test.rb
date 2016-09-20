require "test_helper"
module Poker
  class CardTest < Minitest::Test
    def test_value_int
      card = Card.new("5S")
      assert_equal 5, card.value_int
      card = Card.new("JS")
      assert_equal 11, card.value_int
    end

    def test_value_int_parse
      assert_equal "J", Card.value_int_parse(11)
    end
  end
end
