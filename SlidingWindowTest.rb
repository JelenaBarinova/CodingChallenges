require_relative 'SlidingWindow'
require "test/unit"


class TestSSlidingWindow < Test::Unit::TestCase
    def setup

    end
    def test_sliding_window

        res = SlidingWindow([2, 3, 4, 8, 5], 3)
        assert_equal(5, res)
    end

    def test_given_big_random_array

        array = Array.new(100000.times.map{ Random.rand(100000) })
        
        t1 = Time.now
        res = SlidingWindow(array, 100000)
        t2 = Time.now

        delta = t2 - t1
        puts "DELTA: " + delta.to_s

        assert_equal(true, delta < 2)
    end

    def test_given_big_sorted_array

        array = Array.new(100000.times.map{|i| i})
        
        t1 = Time.now
        res = SlidingWindow(array, 1000)
        t2 = Time.now

        delta = t2 - t1
        puts "DELTA: " + delta.to_s

        assert_equal(true, delta < 2)
    end

end