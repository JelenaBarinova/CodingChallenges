require_relative 'FormStrictlyAscendingArray'
require "test/unit"


class TestFormAscendingArray < Test::Unit::TestCase
    def setup

    end
    def test_with_random_small_array
        res = findK([10, 2, 20])
        assert_equal(5, res)
    end
    def test_with_small_array_non_distinct
        res = findK([9, 9, 9, 9, 7])
        assert_equal(3, res)
    end
    def test_with_small_sorted_desc_array
        res = findK([5, 4, 3, 2, 1])
        assert_equal(4, res)
    end
    def test_with_small_array
        res = findK([4, 8, 3, 5])
        assert_equal(3, res)
    end
    def test_small_array_with_very_different_numbers
        res = findK([4, 108, 99, 5])
        assert_equal(53, res)
    end
    def test_small_array_strictly_sorted_asc
        res = findK([1, 2, 3, 4, 5])
        assert_equal(0, res)
    end
    def test_small_array_sorted_asc
        res = findK([1, 1, 3, 4, 5])
        assert_equal(1, res)
    end
    def test_big_sorted_array
        array = Array.new(100000.times.map{|i| i})
        
        t1 = Time.now
        res = findK(array)
        t2 = Time.now

        delta = t2 - t1
        puts "DELTA: " + delta.to_s

        assert_equal(true, delta < 2) 
    end
    def test_big_random_array
        array = Array.new(100000.times.map{Random.rand(100000)})
        
        t1 = Time.now
        res = findK(array)
        t2 = Time.now

        delta = t2 - t1
        puts "DELTA: " + delta.to_s

        assert_equal(true, delta < 2) 
    end
end