require "test_helper"
module Poker
  module Rule
    class FullHouseTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule = Rule::FullHouse.new(Poker::Hand.new("2S 2D 2C 3H 3S").cards)
      end

      def test_high_card_value_ints
        assert_equal [2, 3], @rule.high_card_value_ints
      end
    end
  end
end
