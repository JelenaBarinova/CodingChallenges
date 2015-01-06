require_relative 'PythagoreanTriplet'
require "test/unit"


class TestPythagoreanTriplet < Test::Unit::TestCase
    def setup

    end
    def test_returns_triplet_given_small_array
        arr = PythagoreanTriplet([9, 2, 3, 4, 8, 5, 6, 10])
       	res = arr.include?([3, 4, 5]) and arr.include?([6, 8, 10])

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