module Poker
  module Rule
    class StraightFlush < Rule::Base
      def valid?
        Flush.new(cards).valid? && Straight.new(cards).valid?
      end

      def high_card_value_ints
        Straight.new(cards).high_card_value_ints
      end
    end
  end
end
