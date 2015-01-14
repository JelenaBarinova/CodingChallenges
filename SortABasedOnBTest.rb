require_relative 'SortABasedOnB'
require "test/unit"

class TestSortABasedOnB< Test::Unit::TestCase
    def setup
        
    end
    def test_given_example
        a =[2, 1, 2, 5, 7, 1, 9, 3, 6, 8, 8]
        b =[2, 1, 8, 3]
       
        res = sortABasedOnB(a, b)
        assert_equal([2, 2, 1, 1, 8, 8, 3, 5, 6, 7, 9], res)
    end
    def test_when_b_has_chars_that_a_does_not
        a =[2, 1, 2, 5, 7, 1, 9, 3, 6, 8, 8]
        b =[2, 13, 1, 8, 3, 14]
       
        res = sortABasedOnB(a, b)
        assert_equal([2, 2, 1, 1, 8, 8, 3, 5, 6, 7, 9], res)
    end
    def test_when_b_is_longer_than_a
        a =[2, 1, 9, 8]
        b =[2, 13, 1, 8, 3, 14]
       
        res = sortABasedOnB(a, b)
        assert_equal([2, 1, 8, 9], res)
    end
    def test_when_b_has_1_element
        a =[2, 1, 9, 8]
        b =[8]
       
        res = sortABasedOnB(a, b)
        assert_equal([8, 1, 2, 9], res)
    end
end
