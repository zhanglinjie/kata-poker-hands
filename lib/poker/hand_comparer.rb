module Poker
  class HandComparer
    attr_accessor :black, :white
    def initialize(black, white)
      @black = Hand.new(black)
      @white = Hand.new(white)
    end

    def compare
      @result = Poker::RULES.index(white.high_rule) <=> Poker::RULES.index(black.high_rule)
      case @result
      when 0 then
        Hash[black.high_card_value_ints.zip(white.high_card_value_ints)].detect do |a, b|
          @result = a <=> b
          @win_info = Card.value_int_parse([a, b].max)
          @result != 0
        end
      when 1 then
        @win_info = black.high_rule.name.split("::").last
      when -1 then
        @win_info = white.high_rule.name.split("::").last
      end
      [@result, @win_info]
    end
  end
end
