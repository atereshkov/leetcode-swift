import XCTest

@testable import leetcode

class Merge_Two_Sorted_ListsTests: XCTestCase {

    // Option 1 (my)

    func test21_Merge_Two_Sorted_ListsTests1() {
        let list1 = ListNode(1, ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        let expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
        XCTAssertEqual(P21().mergeTwoLists(list1, list2), expected)
    }

    // Option 2 (neetcode - iterative)

    func test21_Merge_Two_Sorted_ListsTests2() {
        let list1 = ListNode(1, ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        let expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
        XCTAssertEqual(P21().mergeTwoLists2(list1, list2), expected)
    }

    // Option 3 (neetcode - recursive)

    func test21_Merge_Two_Sorted_ListsTests3() {
        let list1 = ListNode(1, ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        let expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
        XCTAssertEqual(P21().mergeTwoLists3(list1, list2), expected)
    }
}
