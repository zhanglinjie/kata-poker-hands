require "test_helper"
module Poker
  module Rule
    class HighCardTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::HighCard.new(Poker::Hand.new("2S 4D 6C 8H TS").cards)
      end

      def test_high_card_value_ints
        assert_equal [10, 8, 6, 4, 2], @rule.high_card_value_ints
      end
    end
  end
end
