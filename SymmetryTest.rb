require_relative 'Symmetry'
require "test/unit"

class TestSymmetry < Test::Unit::TestCase
    def setup

    end
    def test_for_4_symetrical_points_at_symmetry_line_x_equals_0
        arr = [[-2, 3], [1, -1], [2, 3], [-1, -1]]
        res = isSymmetry(arr)
        
        assert_equal(true, res)
    end
    def test_for_symetrical_points_at_symmetry_line_x_equals_3
        arr = [[-3, 8], [6, 2], [4, 4], [2, 4], [6, 8], [1, 6], [-1, 2], [8, 8], [5, 6], [-1, 8]]
        res = isSymmetry(arr)
        
        assert_equal(true, res)
    end
    def test_for_symetrical_points_with_point_on_a_symmetry_line_x_equals_3
        arr = [[-3, 8], [6, 2], [3, 8], [4, 4], [2, 4], [6, 8], [1, 6], [-1, 2], [8, 8], [5, 6], [-1, 8]]
        res = isSymmetry(arr)
        
        assert_equal(true, res)
    end
    def test_for_asymetrical_points
        arr = [[-3, 8], [6, 2], [4, 8], [4, 4], [2, 4], [6, 8], [1, 6], [-1, 2], [8, 8], [5, 6], [-1, 8]]
        res = isSymmetry(arr)
        
        assert_equal(false, res)
    end
    def test_for_seriogas_points
        arr = [[-1, 2], [0, -2], [2, -2], [3, 2], [3, 1], [-1, 1]]
        res = isSymmetry(arr)
        
        assert_equal(true, res)
    end
end