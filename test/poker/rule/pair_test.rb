require "test_helper"
module Poker
  module Rule
    class PairTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::Pair.new(Poker::Hand.new("2S 2D 6C 8H TS").cards)
      end

      def test_high_card_value_ints
        assert_equal [2, 10, 8, 6], @rule.high_card_value_ints
      end
    end
  end
end
