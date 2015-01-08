require_relative 'FindKInRotatedSortedArray'
require "test/unit"

class TestFindK < Test::Unit::TestCase
    def setup
        
    end
    def test_when_left_fold_and_k_is_on_the_left  
        res = findK([6, 7, 8, 9, 1, 2, 3, 4, 5], 7)

        assert_equal(1, res)
    end
    def test_when_left_fold_and_k_is_on_the_right  
        res = findK([6, 7, 8, 9, 1, 2, 3, 4, 5], 3)

        assert_equal(6, res)
    end
    def test_when_left_fold_and_k_is_in_the_middle  
        res = findK([6, 7, 8, 9, 1, 2, 3, 4, 5], 1)

        assert_equal(4, res)
    end
    def test_when_non_distinct_values  
        res = findK([1, 1, 0, 1, 1, 1], 0)

        assert_equal(2, res)
    end
    def test_when_no_fold_present  
        res = findK([1, 1, 3, 8, 11], 3)

        assert_equal(2, res)
    end
end