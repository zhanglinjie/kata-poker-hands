require_relative "card"
module Poker
  class Hand
    attr_accessor :cards
    def initialize(params)
      @cards = params.split(" ").map{|p| Card.new(p)}
    end

    def high_rule
      @high_rule ||= Poker::RULES.detect{|rule| rule.new(cards).valid? }
    end

    def high_card_value_ints
      high_rule.new(cards).high_card_value_ints
    end
  end
end
