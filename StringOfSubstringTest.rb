require_relative 'StringOfSubstring'
require "test/unit"

class TestStringOfSubstring < Test::Unit::TestCase
    def setup
        
    end
    def test_when_prefix_repeated_3_times
        
        str = "abcabcabc"      
        res = isStringOfSubstring(str)
        
        assert_equal(true, res)
    end
    def test_for_false  
        
        str = "abcabcabca"      
        res = isStringOfSubstring(str)
        
        assert_equal(false, res)
    end
    def test_for_longer_prefix_with_first_letter_reapeating  
        
        str = "xyzxyxyzxyxyzxy"      
        res = isStringOfSubstring(str)
        
        assert_equal(true, res)
    end
end