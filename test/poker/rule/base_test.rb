module Poker
  module Rule
    module BaseTest
      def test_valid
        assert @rule.valid?
      end
    end
  end
end
