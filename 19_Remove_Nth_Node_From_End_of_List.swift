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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var listOfNodes = [ListNode]()
        
        var h = head
        while  h != nil{
            if let h = h {
                listOfNodes.append(h)
            }
            h = h?.next
        }
        if n == 1 && listOfNodes.count == 1 {
            return nil
        } else if n == listOfNodes.count {
            return listOfNodes[1]
        } else if listOfNodes.count > n {
            listOfNodes[(listOfNodes.count-n)-1].next = listOfNodes[(listOfNodes.count-n)].next
        }
        return head
    }
}
