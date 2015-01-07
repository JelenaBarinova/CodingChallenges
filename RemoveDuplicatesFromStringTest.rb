require_relative 'RemoveDuplicatesFromString'
require_relative '../Algorithms/DataStructures/BST'
require "test/unit"

class TestRemoveDuplicates < Test::Unit::TestCase
    def setup
        
    end
    def test_returns_string_with_distinct_values  
        res = removeDuplicates("aabracccaddddabra")

        assert_equal("abrcd", res)
    end
    def test_returns_correct_string_for_one_char
        res = removeDuplicates("a")

        assert_equal("a", res)
    end
    def test_inplace_returns_string_with_distinct_values  
        str = "aabracccaddddabra"
        res = removeDuplicatesInPlace(str)
        
        assert_equal("abcdr", res)
    end
    def test_inplace_returns_correct_string_for_one_char
        res = removeDuplicatesInPlace("a")

        assert_equal("a", res)
    end
end