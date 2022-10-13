/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        guard let node = node else {
            return
        }
        var n = node
        var prevNode = node
        while n.next != nil {
            n.val = n.next!.val
            prevNode = n
            n = n.next!
        }
        prevNode.next = nil
    }
}
