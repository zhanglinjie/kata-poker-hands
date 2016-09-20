module Poker
  module Rule
    class Flush < Rule::Base
      def valid?
        card_suits.uniq.size == 1
      end
    end
  end
end
