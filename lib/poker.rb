require_relative 'poker/card'
require_relative 'poker/hand'
require_relative 'poker/rule/base'
require_relative 'poker/rule/straight_flush'
require_relative 'poker/rule/four_of_a_kind'
require_relative 'poker/rule/full_house'
require_relative 'poker/rule/flush'
require_relative 'poker/rule/straight'
require_relative 'poker/rule/three_of_a_kind'
require_relative 'poker/rule/two_pairs'
require_relative 'poker/rule/pair'
require_relative 'poker/rule/high_card'
require_relative 'poker/hand_comparer'

module Poker
  RULES = [
    Rule::StraightFlush,
    Rule::FourOfAKind,
    Rule::FullHouse,
    Rule::Flush,
    Rule::Straight,
    Rule::ThreeOfAKind,
    Rule::TwoPairs,
    Rule::Pair,
    Rule::HighCard
  ].freeze

  VALUES = %w(A K Q J T 9 8 7 6 5 4 3 2).freeze

  def self.compare(black, white)
    comparer = HandComparer.new(black, white)
    result, info = comparer.compare
    case result
    when -1 then "White wins. - with #{info}"
    when  1 then "Black wins. - with #{info}"
    when  0 then "Tie."
    end
  end
end
