require "test_helper"
module Poker
  class HandComparerTest < Minitest::Test
    def test_compare_with_same_rule
      black = "2S 4D 6C 8H TS"
      white = "2S 4D 6C 8H 9S"
      result, win_info = HandComparer.new(black, white).compare
      assert_equal 1, result
      assert_equal "T", win_info
    end

    def test_compare_with_diff_rule
      black = "2S 3S 4S 5S 6S"
      white = "AS AD AC AH 9S"
      result, win_info = HandComparer.new(black, white).compare
      assert_equal 1, result
      assert_equal "StraightFlush", win_info
    end

    def test_compare_rule
      assert_equal [1, "StraightFlush"],  HandComparer.new("AS 2S 3S 4S 5S", "AS AC AD AH 2S").compare
      assert_equal [1, "FourOfAKind"],    HandComparer.new("AS AC AD AH 2S", "AS AC AD 2H 2S").compare
      assert_equal [1, "FullHouse"],      HandComparer.new("AS AC AD 2H 2S", "AS 3S 5S 7S 9S").compare
      assert_equal [1, "Flush"],          HandComparer.new("AS 3S 5S 7S 9S", "AS 2C 3D 4H 5S").compare
      assert_equal [1, "Straight"],       HandComparer.new("AS 2C 3D 4H 5S", "AS AC AD 4H 2S").compare
      assert_equal [1, "ThreeOfAKind"],   HandComparer.new("AS AC AD 4H 2S", "AS AC 3D 2H 2S").compare
      assert_equal [1, "TwoPairs"],       HandComparer.new("AS AC 3D 2H 2S", "AS AC 3D 4H 2S").compare
      assert_equal [1, "Pair"],           HandComparer.new("AS AC 3D 4H 2S", "AS 5C 6D 9H 2S").compare
    end
  end
end
