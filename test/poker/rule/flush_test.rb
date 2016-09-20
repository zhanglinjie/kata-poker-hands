require "test_helper"
module Poker
  module Rule
    class FlushTest < Minitest::Test
      include Rule::BaseTest
      def setup
        @rule =  Rule::Flush.new(Poker::Hand.new("2S 4S 6S 8S TS").cards)
      end

      def test_high_card_value_ints
        assert_equal [10, 8, 6, 4, 2], @rule.high_card_value_ints
      end
    end
  end
end
