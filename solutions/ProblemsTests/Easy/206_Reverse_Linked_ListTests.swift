import XCTest

@testable import leetcode

class Reverse_Linked_ListTests: XCTestCase {

    // Option 1 (my)

    func test206_Reverse_Linked_ListTests1() {
        let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))
        XCTAssertEqual(P206().reverseList(list), expected)
    }

    // Option 2 (neetcode - iterative)

    func test206_Reverse_Linked_ListTests2() {
        let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))
        XCTAssertEqual(P206().reverseList2(list), expected)
    }

    // Option 3 (neetcode - recursive)

    func test206_Reverse_Linked_ListTests3() {
        let list = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let expected = ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))
        XCTAssertEqual(P206().reverseList3(list), expected)
    }
}
