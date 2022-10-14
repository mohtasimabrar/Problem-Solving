/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        var node = head
        var midNode = head
        var idx = 1
        var mid = 0
        while node != nil {
            var newMid = max((idx/2)-1,0)
            if mid < newMid {
                mid += 1
                midNode = midNode!.next
            }
            idx += 1
            node = node!.next   
        }
        if idx > 2 {
            midNode!.next = midNode!.next!.next
        } else {
            return nil
        }
        return head
    }
}
