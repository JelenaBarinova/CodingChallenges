require_relative 'FindKBiggestElement'
require "test/unit"


class TestFindK < Test::Unit::TestCase
    def setup

    end
    def test_for_small_array
        arr = [4, 7, 1, 3, 5, 6, 2, 4]
        res = FindK(arr, 5)
        
        assert_equal(true, res)
    end
    def test_given_big_random_array

        array = Array.new(1000.times.map{ Random.rand(10000) })
        
        t1 = Time.now
        arr = PythagoreanTriplet(array)
        t2 = Time.now

        delta = t2 - t1
        puts "DELTA: " + delta.to_s

        assert_equal(true, delta < 2)
    end
end