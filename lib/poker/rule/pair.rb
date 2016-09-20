module Poker
  module Rule
    class Pair < Rule::Base
      def valid?
        grouped_card_value_ints.values == [2, 1, 1, 1]
      end
    end
  end
end
