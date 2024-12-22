/*
 Done 22.12.2024. Revisited: N/A

 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.

 Example 1:
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]

 Example 2:
 Input: list1 = [], list2 = []
 Output: []

 Example 3:
 Input: list1 = [], list2 = [0]
 Output: [0]

 Constraints:
 The number of nodes in both lists is in the range [0, 50].
 -100 <= Node.val <= 100
 Both list1 and list2 are sorted in non-decreasing order.

 https://www.youtube.com/watch?v=XIdigk956u0
 Microsoft.
 */

import Foundation

class P21 {

    // MARK: - Option 1. Time: O(?). Memory: O(?)

    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var currP1: ListNode? = list1
        var currP2: ListNode? = list2
        var resHead: ListNode?

        while currP1 != nil {
            // todo: check which one to take based on the value
            let tmpNext1 = currP1?.next
            let tmpNext2 = currP2?.next
            currP1?.next = currP2
            currP1?.next?.next = tmpNext1
            currP1 = tmpNext1
            currP2 = tmpNext2
        }

        return resHead
    }

    // MARK: - Option 2 (neetcode - iterative). Time: O(n + m). Memory: O(n + m)

    func mergeTwoLists2(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode()
        var tail: ListNode? = dummy

        var l1 = list1
        var l2 = list2

        while l1 != nil && l2 != nil {
            if l1?.val ?? 0 < l2?.val ?? 0 {
                tail?.next = l1
                l1 = l1?.next
            } else {
                tail?.next = l2
                l2 = l2?.next
            }
            tail = tail?.next
        }

        if l1 != nil {
            tail?.next = l1
        } else if l2 != nil {
            tail?.next = l2
        }

        return dummy.next
    }

    // MARK: - Option 3 (neetcode - recursive). Time: O(n + m). Memory: O(1)

    func mergeTwoLists3(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // TODO debug and investigate this approach
        if list1 == nil {
            return list2
        }
        if list2 == nil {
            return list1
        }

        if list1?.val ?? 0 <= list2?.val ?? 0 {
            list1?.next = mergeTwoLists3(list1?.next, list2)
            return list1
        } else {
            list2?.next = mergeTwoLists3(list1, list2?.next)
            return list2
        }
    }
}
