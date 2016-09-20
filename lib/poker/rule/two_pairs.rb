module Poker
  module Rule
    class TwoPairs < Rule::Base
      def valid?
        grouped_card_value_ints.values == [2,2,1]
      end
    end
  end
end
