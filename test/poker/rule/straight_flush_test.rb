require "test_helper"
module Poker
  module Rule
    class StraightFlushTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::StraightFlush.new(Poker::Hand.new("2S 3S 4S 5S 6S").cards)
      end

      def test_high_card_value_ints
        assert_equal [6], @rule.high_card_value_ints
      end
    end
  end
end
