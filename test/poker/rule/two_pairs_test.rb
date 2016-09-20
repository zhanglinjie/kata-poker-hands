require "test_helper"
module Poker
  module Rule
    class TwoPairsTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::TwoPairs.new(Poker::Hand.new("2S 2D 3C 3S 6S").cards)
      end

      def test_high_card_value_ints
        assert_equal [3, 2, 6], @rule.high_card_value_ints
      end
    end
  end
end
