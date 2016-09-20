module Poker
  module Rule
    class HighCard < Rule::Base
      def valid?
        grouped_card_value_ints.values == [1, 1, 1, 1, 1]
      end
    end
  end
end
