=begin
A program to check if a binary tree is BST or not
A binary search tree (BST) is a node based binary tree data structure which has the following properties.
• The left subtree of a node contains only nodes with keys less than the node’s key.
• The right subtree of a node contains only nodes with keys greater than the node’s key.
• Both the left and right subtrees must also be binary search trees.

From the above properties it naturally follows that:
• Each node (item in the tree) has a distinct key.
=end
require_relative '../Algorithms/DataStructures/BST'
def isBST (root, prev = nil)
    if !root.nil? then
    	if !isBST(root.left, prev) then return false end

    	if !prev.nil? and root.key <= prev.key then return false end

    	prev = root

    	return isBST(root.right, prev)
    end
    return true
end