/**
 *
 * https://leetcode.com/problems/add-one-row-to-tree/
 *
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func addOneRow(_ root: TreeNode?, _ val: Int, _ depth: Int) -> TreeNode? {
        if depth == 1 {
            let newRoot = TreeNode(val, root, nil)
            return newRoot
        } else {
            dfs(root, val, depth, 1)
            return root
        }
    }
    
    func dfs(_ root: TreeNode?, _ val: Int, _ requiredDepth: Int, _ currentDepth: Int) {
        guard let node = root else {
            return
        }
        
        if requiredDepth == currentDepth + 1 {
            let leftNode = node.left
            let rightNode = node.right
            let newLeftNode = TreeNode(val, leftNode, nil)
            let newRightNode = TreeNode(val, nil, rightNode)
            node.left = newLeftNode
            node.right = newRightNode
            return
        } else {
            dfs(node.left, val, requiredDepth, currentDepth + 1)
            dfs(node.right, val, requiredDepth, currentDepth + 1)
        }
    }
}
