/**

https://leetcode.com/problems/path-sum/

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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let rootNode = root  else{
           return false
        }
        return Solution.dfs(rootNode, rootNode.val, targetSum)
        
    }
    
    static func dfs(_ node: TreeNode?, _ sum: Int, _ targetSum: Int) -> Bool{
        guard let treeNode = node else {
            return false
        }
        
        if (sum == targetSum && treeNode.left == nil && treeNode.right == nil) {
            return true
        } else if (treeNode.left == nil && treeNode.right == nil) {
            return false
        }
        
        var left = false
        var right = false
        
        if let leftNode = treeNode.left {
            let leftSum = leftNode.val + sum
            left = dfs(leftNode, leftSum, targetSum)
        }
        
        if let rightNode = treeNode.right {
            let rightSum = rightNode.val + sum
            right = dfs(rightNode, rightSum, targetSum)
        }
        
        return left || right
    }
}
