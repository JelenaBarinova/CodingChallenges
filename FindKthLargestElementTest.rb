require_relative 'FindKthLargestElement'
require "test/unit"

class TestFindK < Test::Unit::TestCase
    def setup

    end
    def test_for_small_array
        arr = [4, 7, 1, 3, 5, 6, 2]
        res = findK(arr, 3)
        
        assert_equal(5, res)
    end
    def test_for_k_out_of_the_range
        arr = [4, 7, 1, 3, 5, 6, 2]
        res = findK(arr, 8)
        
        assert_equal(nil, res)
    end
    def test_for_non_distinct_elements_in_array
        arr = [4, 6, 7, 1, 3, 5, 6, 2, 5, 7]
        res = findK(arr, 3)
        
        assert_equal(6, res)
    end
    def test_for_very_big_array
        array = Array.new(100000.times.map{ Random.rand(100000) })
        k = Random.rand(100000)
        
        res = findK(array, k)
        
        array.sort()
        act = array[array.size - k]

        assert_equal(act, res)
    end
end