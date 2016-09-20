require "test_helper"
module Poker
  module Rule
    class ThreeOfAKindTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::ThreeOfAKind.new(Poker::Hand.new("2S 2D 2C 5S 6S").cards)
      end

      def test_high_card_value_ints
        assert_equal [2, 6, 5], @rule.high_card_value_ints
      end
    end
  end
end
