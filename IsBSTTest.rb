require_relative 'IsBST'
require_relative '../Algorithms/DataStructures/BST'
require "test/unit"

class TestIsBST < Test::Unit::TestCase
    def setup
        @tree = BST.new()
    end
    def test_returns_true_for_BST
        @tree.put('D', 1)
        @tree.put('B', 3)
        @tree.put('C', 4)
        @tree.put('A', 1)
        @tree.put('X', 1)
        @tree.put('F', 2)
        @tree.put('B', 0)
        @tree.put('X', 1)

        res = isBST(@tree.root)
       
        assert_equal(true, res)
    end
    def test_returns_false_for_not_BST
        @tree.put('D', 1)
        @tree.put('B', 3)
        @tree.put('C', 4)
        @tree.put('L', 1)
        @tree.put('X', 1)
        @tree.put('F', 2)
        @tree.put('B', 0)
        @tree.put('X', 1)
        fake_node = Node.new('A', 1)
        tmp = @tree.root.right
        fake_node.left = tmp
        @tree.root.right = fake_node

        res = isBST(@tree.root)
       
        assert_equal(false, res)
    end
end