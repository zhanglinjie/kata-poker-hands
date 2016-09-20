module Poker
  module Rule
    class FourOfAKind < Rule::Base
      def valid?
        grouped_card_value_ints.values == [4, 1]
      end
    end
  end
end
