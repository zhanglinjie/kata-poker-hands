require "test_helper"
module Poker
  class HandTest < Minitest::Test
    def test_high_rule
      hand = Hand.new("2S 3S 4S 5S 6S")
      assert_equal Rule::StraightFlush, hand.high_rule
    end

    def test_high_card_value_ints
      hand = Hand.new("2S 2C 4S 4D 6S")
      assert_equal [4, 2, 6], hand.high_card_value_ints
    end
  end
end
