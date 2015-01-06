require_relative 'LuckyNumbers'
require "test/unit"


class TestLuckyNumbers < Test::Unit::TestCase
    def setup

    end
    def test_returns_true_for_number_within_2_iterations
        res = isLucky(3)
        assert_equal(true, res)
    end
    def test_returns_false_for_number_within_2_iterations
        res = isLucky(11)
        assert_equal(false, res)
    end
    def test_returns_true_for_number_within_many_iterations
        res = isLucky(529)
        assert_equal(true, res)
    end
    def test_returns_true_for_number_within_a_lot_iterations
        res = isLucky(9889)
        assert_equal(true, res)
    end
    def test_returns_false_for_big_number
        res = isLucky(9899)
        assert_equal(false, res)
    end
end