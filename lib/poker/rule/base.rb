module Poker
  module Rule
    class Base
      attr_accessor :cards
      def initialize(cards)
        @cards = cards
      end

      def valid?
        raise NotImplementedError
      end

      def high_card_value_ints
        @high_card_value_ints ||= grouped_card_value_ints.keys
      end

      private
      def grouped_card_value_ints
        card_value_ints.group_by(&:itself).map{|k, v| [k, v.size]}.sort_by{|a| -a[1]}.to_h
      end

      def card_value_strs
        cards.sort_by{|c| -c.value_int }.map(&:value_str)
      end

      def card_value_ints
        cards.sort_by{|c| -c.value_int }.map(&:value_int)
      end

      def card_suits
        cards.map(&:suit)
      end
    end
  end
end
