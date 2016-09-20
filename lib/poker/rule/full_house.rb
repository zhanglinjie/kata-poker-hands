module Poker
  module Rule
    class FullHouse < Rule::Base
      def valid?
        grouped_card_value_ints.values == [3, 2]
      end
    end
  end
end
