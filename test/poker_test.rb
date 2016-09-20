require "test_helper"

class PokerTest < Minitest::Test
  def test_compare
    assert_equal "Black wins. - with StraightFlush", Poker.compare("2S 3S 4S 5S 6S", "AS AD AC AH 9S")
    assert_equal "White wins. - with T", Poker.compare("2S 4D 6C 8H 9S", "2S 4D 6C 8H TS")
    assert_equal "Tie.", Poker.compare("2S 4D 6C 8H 9S", "2S 4D 6C 8H 9H")
  end
end
