module Poker
  module Rule
    class ThreeOfAKind < Rule::Base
      def valid?
        grouped_card_value_ints.values == [3,1,1]
      end
    end
  end
end
