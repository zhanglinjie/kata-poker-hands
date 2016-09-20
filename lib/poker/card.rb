module Poker
  class Card
    attr_accessor :suit, :value_str, :value_int
    def initialize(params)
      @value_str, @suit = params.split("")
      @value_int = value_parse(@value_str)
    end

    def self.value_int_parse(value_int)
      case value_int
      when 14 then "A"
      when 13 then "K"
      when 12 then "Q"
      when 11 then "J"
      when 10 then "T"
      else value_int.to_s
      end
    end

    private
    def value_parse(str)
      case str
      when "A" then 14
      when "K" then 13
      when "Q" then 12
      when "J" then 11
      when "T" then 10
      else str.to_i
      end
    end
  end
end
