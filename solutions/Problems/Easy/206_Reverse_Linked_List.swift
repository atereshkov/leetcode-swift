/*
 Done 21.12.2024. Revisited: N/A

 Given the head of a singly linked list, reverse the list, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [5,4,3,2,1]

 Example 2:
 Input: head = [1,2]
 Output: [2,1]

 Example 3:
 Input: head = []
 Output: []

 Constraints:
 The number of nodes in the list is the range [0, 5000].
 -5000 <= Node.val <= 5000

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

 https://www.youtube.com/watch?v=G0_I-ZF0S38
 Google, Facebook.
 */

import Foundation

class P206 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func reverseList(_ head: ListNode?) -> ListNode? {
        return ListNode()
    }

    // MARK: - Option 2 (neetcode - iterative). Time: O(n). Memory: O(1)

    func reverseList2(_ head: ListNode?) -> ListNode? {
        var prevP: ListNode?
        var currP: ListNode? = head

        while currP != nil {
            let tmpNext = currP?.next
            currP?.next = prevP
            prevP = currP // shift pointers
            currP = tmpNext
        }

        return prevP
    }

    // MARK: - Option 2 (neetcode - recursive). Time: O(n). Memory: O(n)

    func reverseList3(_ head: ListNode?) -> ListNode? {
        // TODO debug this with -> 1, and -> 1 -> 2 cases to visually check things
        guard let head else { return nil }

        var newHead: ListNode? = head
        if head.next != nil {
            newHead = reverseList3(head.next)
            head.next?.next = head
        }
        head.next = nil

        return newHead
    }

}
