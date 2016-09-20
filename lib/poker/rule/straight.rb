module Poker
  module Rule
    class Straight < Rule::Base
      def valid?
        Poker::VALUES.join.include?(card_value_strs.join) ||
        "A5432" == card_value_strs.join
      end

      def high_card_value_ints
        "A5432" == card_value_strs.join ? [5] : [card_value_ints.first]
      end
    end
  end
end
