/**
 * 
 * https://leetcode.com/problems/maximum-depth-of-binary-tree/
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
    func maxDepth(_ root: TreeNode?) -> Int {
        let depth = dfs(root, 1)
        return depth
    }
    
    func dfs(_ root: TreeNode?, _ depth: Int) -> Int {
        guard let node = root else {
            return depth - 1
        }
        let leftDepth = dfs(node.left, depth + 1)
        let rightDepth = dfs(node.right, depth + 1)
        
        if leftDepth > rightDepth {
            return leftDepth
        } else {
            return rightDepth
        }
    }
}
